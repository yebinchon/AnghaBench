; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_taglist2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_taglist2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_taglist2str(%struct.config_file* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [10240 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  %12 = getelementptr inbounds [10240 x i8], [10240 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %12, align 16
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %71, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %71

24:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 1, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = mul i64 %39, 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = getelementptr inbounds [10240 x i8], [10240 x i8]* %7, i64 0, i64 0
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 10240, %46
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.config_file*, %struct.config_file** %4, align 8
  %54 = getelementptr inbounds %struct.config_file, %struct.config_file* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snprintf(i8* %45, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %58)
  %60 = getelementptr inbounds [10240 x i8], [10240 x i8]* %7, i64 0, i64 0
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = call i64 @strlen(i8* %62)
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %38, %28
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %25

70:                                               ; preds = %25
  br label %71

71:                                               ; preds = %70, %23
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %13

74:                                               ; preds = %13
  %75 = getelementptr inbounds [10240 x i8], [10240 x i8]* %7, i64 0, i64 0
  %76 = call i8* @strdup(i8* %75)
  ret i8* %76
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
