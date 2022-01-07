; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba.c_dba_page_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba.c_dba_page_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dba_array = type opaque

@DBP_MAX = common dso_local global i32 0, align 4
@DBA_STR = common dso_local global i32 0, align 4
@DBA_GROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dba_array* @dba_page_new(%struct.dba_array* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dba_array*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dba_array*, align 8
  %12 = alloca %struct.dba_array*, align 8
  store %struct.dba_array* %0, %struct.dba_array** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @DBP_MAX, align 4
  %14 = call i8* @dba_array_new(i32 %13, i32 0)
  %15 = bitcast i8* %14 to %struct.dba_array*
  store %struct.dba_array* %15, %struct.dba_array** %11, align 8
  %16 = load i32, i32* @DBA_STR, align 4
  %17 = load i32, i32* @DBA_GROW, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @dba_array_new(i32 1, i32 %18)
  %20 = bitcast i8* %19 to %struct.dba_array*
  store %struct.dba_array* %20, %struct.dba_array** %12, align 8
  %21 = load %struct.dba_array*, %struct.dba_array** %11, align 8
  %22 = bitcast %struct.dba_array* %21 to i8*
  %23 = load %struct.dba_array*, %struct.dba_array** %12, align 8
  %24 = bitcast %struct.dba_array* %23 to i8*
  %25 = call i32 @dba_array_add(i8* %22, i8* %24)
  %26 = load i32, i32* @DBA_STR, align 4
  %27 = load i32, i32* @DBA_GROW, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @dba_array_new(i32 1, i32 %28)
  %30 = bitcast i8* %29 to %struct.dba_array*
  store %struct.dba_array* %30, %struct.dba_array** %12, align 8
  %31 = load %struct.dba_array*, %struct.dba_array** %11, align 8
  %32 = bitcast %struct.dba_array* %31 to i8*
  %33 = load %struct.dba_array*, %struct.dba_array** %12, align 8
  %34 = bitcast %struct.dba_array* %33 to i8*
  %35 = call i32 @dba_array_add(i8* %32, i8* %34)
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %5
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* @DBA_STR, align 4
  %45 = load i32, i32* @DBA_GROW, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @dba_array_new(i32 1, i32 %46)
  %48 = bitcast i8* %47 to %struct.dba_array*
  store %struct.dba_array* %48, %struct.dba_array** %12, align 8
  %49 = load %struct.dba_array*, %struct.dba_array** %12, align 8
  %50 = bitcast %struct.dba_array* %49 to i8*
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @dba_array_add(i8* %50, i8* %51)
  br label %54

53:                                               ; preds = %38, %5
  store %struct.dba_array* null, %struct.dba_array** %12, align 8
  br label %54

54:                                               ; preds = %53, %43
  %55 = load %struct.dba_array*, %struct.dba_array** %11, align 8
  %56 = bitcast %struct.dba_array* %55 to i8*
  %57 = load %struct.dba_array*, %struct.dba_array** %12, align 8
  %58 = bitcast %struct.dba_array* %57 to i8*
  %59 = call i32 @dba_array_add(i8* %56, i8* %58)
  %60 = load %struct.dba_array*, %struct.dba_array** %11, align 8
  %61 = bitcast %struct.dba_array* %60 to i8*
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @mandoc_strdup(i8* %62)
  %64 = call i32 @dba_array_add(i8* %61, i8* %63)
  %65 = load i32, i32* @DBA_STR, align 4
  %66 = load i32, i32* @DBA_GROW, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @dba_array_new(i32 1, i32 %67)
  %69 = bitcast i8* %68 to %struct.dba_array*
  store %struct.dba_array* %69, %struct.dba_array** %12, align 8
  %70 = load %struct.dba_array*, %struct.dba_array** %12, align 8
  %71 = bitcast %struct.dba_array* %70 to i8*
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i8* @prepend(i8* %72, i32 %73)
  %75 = call i32 @dba_array_add(i8* %71, i8* %74)
  %76 = load %struct.dba_array*, %struct.dba_array** %11, align 8
  %77 = bitcast %struct.dba_array* %76 to i8*
  %78 = load %struct.dba_array*, %struct.dba_array** %12, align 8
  %79 = bitcast %struct.dba_array* %78 to i8*
  %80 = call i32 @dba_array_add(i8* %77, i8* %79)
  %81 = load %struct.dba_array*, %struct.dba_array** %6, align 8
  %82 = bitcast %struct.dba_array* %81 to i8*
  %83 = load %struct.dba_array*, %struct.dba_array** %11, align 8
  %84 = bitcast %struct.dba_array* %83 to i8*
  %85 = call i32 @dba_array_add(i8* %82, i8* %84)
  %86 = load %struct.dba_array*, %struct.dba_array** %11, align 8
  ret %struct.dba_array* %86
}

declare dso_local i8* @dba_array_new(i32, i32) #1

declare dso_local i32 @dba_array_add(i8*, i8*) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i8* @prepend(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
