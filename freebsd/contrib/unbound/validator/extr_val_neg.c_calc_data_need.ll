; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_calc_data_need.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_calc_data_need.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32*, i32 }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.reply_info*)* @calc_data_need to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_data_need(%struct.reply_info* %0) #0 {
  %2 = alloca %struct.reply_info*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %8 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %71, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %13 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %16 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  %19 = icmp ult i64 %11, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %10
  %21 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %22 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ntohs(i32 %29)
  %31 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %20
  %34 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %35 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %3, align 8
  %43 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %44 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add i64 4, %52
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %59, %33
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @dname_is_root(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = icmp ugt i64 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i32 @log_assert(i32 %62)
  %64 = call i32 @dname_remove_label(i32** %3, i64* %5)
  %65 = load i64, i64* %5, align 8
  %66 = add i64 4, %65
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %54

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %20
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %10

74:                                               ; preds = %10
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
