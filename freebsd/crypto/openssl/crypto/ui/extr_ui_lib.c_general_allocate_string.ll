; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_general_allocate_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_general_allocate_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32, i32, i32, i8*, i32, i32, i8*)* @general_allocate_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @general_allocate_string(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  store i32 -1, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i8*, i8** %15, align 8
  %27 = call %struct.TYPE_13__* @general_allocate_prompt(%struct.TYPE_14__* %21, i8* %22, i32 %23, i32 %24, i32 %25, i8* %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %20, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %9
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = call i64 @allocate_string_stack(%struct.TYPE_14__* %31)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* %17, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i8*, i8** %18, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %54 = call i32 @sk_UI_STRING_push(i32 %52, %struct.TYPE_13__* %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %34
  %58 = load i32, i32* %19, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %19, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %61 = call i32 @free_string(%struct.TYPE_13__* %60)
  br label %62

62:                                               ; preds = %57, %34
  br label %66

63:                                               ; preds = %30
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %65 = call i32 @free_string(%struct.TYPE_13__* %64)
  br label %66

66:                                               ; preds = %63, %62
  br label %67

67:                                               ; preds = %66, %9
  %68 = load i32, i32* %19, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_13__* @general_allocate_prompt(%struct.TYPE_14__*, i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @allocate_string_stack(%struct.TYPE_14__*) #1

declare dso_local i32 @sk_UI_STRING_push(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @free_string(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
