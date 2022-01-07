; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_check_cname_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_check_cname_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i32* }
%struct.reply_info = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply_check_cname_chain(%struct.query_info* %0, %struct.reply_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.query_info*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.query_info* %0, %struct.query_info** %4, align 8
  store %struct.reply_info* %1, %struct.reply_info** %5, align 8
  %10 = load %struct.query_info*, %struct.query_info** %4, align 8
  %11 = getelementptr inbounds %struct.query_info, %struct.query_info* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.query_info*, %struct.query_info** %4, align 8
  %14 = getelementptr inbounds %struct.query_info, %struct.query_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %64, %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %16
  %23 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %24 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %64

37:                                               ; preds = %22
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %40 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @query_dname_compare(i32* %38, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %68

51:                                               ; preds = %37
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %57 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @get_cname_target(%struct.TYPE_4__* %61, i32** %7, i64* %8)
  br label %63

63:                                               ; preds = %55, %51
  br label %64

64:                                               ; preds = %63, %36
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %16

67:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32 @get_cname_target(%struct.TYPE_4__*, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
