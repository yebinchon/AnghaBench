; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_chase_cname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_chase_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32*, i32 }
%struct.reply_info = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_chase_cname(%struct.query_info* %0, %struct.reply_info* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca %struct.reply_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.query_info* %0, %struct.query_info** %5, align 8
  store %struct.reply_info* %1, %struct.reply_info** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %69, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %14 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %11
  %18 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ntohs(i32 %26)
  %28 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %17
  %31 = load %struct.query_info*, %struct.query_info** %5, align 8
  %32 = getelementptr inbounds %struct.query_info, %struct.query_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %35 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @query_dname_compare(i32* %33, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %30
  %46 = load %struct.query_info*, %struct.query_info** %5, align 8
  %47 = getelementptr inbounds %struct.query_info, %struct.query_info* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %49 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.query_info*, %struct.query_info** %5, align 8
  %55 = getelementptr inbounds %struct.query_info, %struct.query_info* %54, i32 0, i32 0
  %56 = load %struct.query_info*, %struct.query_info** %5, align 8
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %56, i32 0, i32 1
  %58 = call i32 @get_cname_target(%struct.TYPE_4__* %53, i32** %55, i32* %57)
  %59 = load %struct.query_info*, %struct.query_info** %5, align 8
  %60 = getelementptr inbounds %struct.query_info, %struct.query_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %73

64:                                               ; preds = %45
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  store i32 1, i32* %4, align 4
  br label %73

68:                                               ; preds = %30, %17
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %11

72:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %64, %63
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32 @get_cname_target(%struct.TYPE_4__*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
