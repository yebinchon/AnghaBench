; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_copyenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_bootinfo.c_bi_copyenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i8*, i8*, %struct.env_var* }
%struct.TYPE_2__ = type { i32 (i8*, i64, i64)* }

@environ = common dso_local global %struct.env_var* null, align 8
@archsw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @bi_copyenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bi_copyenv(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.env_var*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  store i64 %7, i64* %5, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.env_var*, %struct.env_var** @environ, align 8
  store %struct.env_var* %8, %struct.env_var** %3, align 8
  br label %9

9:                                                ; preds = %73, %1
  %10 = load %struct.env_var*, %struct.env_var** %3, align 8
  %11 = icmp ne %struct.env_var* %10, null
  br i1 %11, label %12, label %77

12:                                               ; preds = %9
  %13 = load %struct.env_var*, %struct.env_var** %3, align 8
  %14 = getelementptr inbounds %struct.env_var, %struct.env_var* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %18 = load %struct.env_var*, %struct.env_var** %3, align 8
  %19 = getelementptr inbounds %struct.env_var, %struct.env_var* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 %17(i8* %20, i64 %21, i64 %22)
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %77

28:                                               ; preds = %12
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 %32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %33, i64 1)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %77

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %4, align 8
  %40 = load %struct.env_var*, %struct.env_var** %3, align 8
  %41 = getelementptr inbounds %struct.env_var, %struct.env_var* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = load %struct.env_var*, %struct.env_var** %3, align 8
  %46 = getelementptr inbounds %struct.env_var, %struct.env_var* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %6, align 8
  %49 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %50 = load %struct.env_var*, %struct.env_var** %3, align 8
  %51 = getelementptr inbounds %struct.env_var, %struct.env_var* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 %49(i8* %52, i64 %53, i64 %54)
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %77

60:                                               ; preds = %44
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %60, %37
  %65 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 %65(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 1)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %77

70:                                               ; preds = %64
  %71 = load i64, i64* %4, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %4, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load %struct.env_var*, %struct.env_var** %3, align 8
  %75 = getelementptr inbounds %struct.env_var, %struct.env_var* %74, i32 0, i32 2
  %76 = load %struct.env_var*, %struct.env_var** %75, align 8
  store %struct.env_var* %76, %struct.env_var** %3, align 8
  br label %9

77:                                               ; preds = %69, %59, %36, %27, %9
  %78 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %79 = load i64, i64* %5, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %5, align 8
  %81 = call i32 %78(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 %79, i64 1)
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* %2, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %83, %77
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
