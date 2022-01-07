; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_nodefault.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_nodefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { %struct.config_strlist* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_file*, i8*)* @lz_nodefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_nodefault(%struct.config_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i64, align 8
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = sub i64 %15, 1
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %21, %13
  %25 = load %struct.config_file*, %struct.config_file** %4, align 8
  %26 = getelementptr inbounds %struct.config_file, %struct.config_file* %25, i32 0, i32 0
  %27 = load %struct.config_strlist*, %struct.config_strlist** %26, align 8
  store %struct.config_strlist* %27, %struct.config_strlist** %6, align 8
  br label %28

28:                                               ; preds = %65, %24
  %29 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %30 = icmp ne %struct.config_strlist* %29, null
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %33 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @strncasecmp(i8* %34, i8* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %31
  %40 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %41 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %63, label %46

46:                                               ; preds = %39
  %47 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %48 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %56 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %39
  store i32 1, i32* %3, align 4
  br label %70

64:                                               ; preds = %54, %46, %31
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %67 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %66, i32 0, i32 1
  %68 = load %struct.config_strlist*, %struct.config_strlist** %67, align 8
  store %struct.config_strlist* %68, %struct.config_strlist** %6, align 8
  br label %28

69:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %63, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
