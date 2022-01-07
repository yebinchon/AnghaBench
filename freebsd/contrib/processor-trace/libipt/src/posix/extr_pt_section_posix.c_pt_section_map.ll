; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/posix/extr_pt_section_posix.c_pt_section_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/posix/extr_pt_section_posix.c_pt_section_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i8*, i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_file = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_map(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %8 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %9 = icmp ne %struct.pt_section* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %95

13:                                               ; preds = %1
  %14 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %15 = call i32 @pt_section_lock(%struct.pt_section* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %95

20:                                               ; preds = %13
  %21 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %22 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %27 = call i32 @pt_sec_posix_map_success(%struct.pt_section* %26)
  store i32 %27, i32* %2, align 4
  br label %95

28:                                               ; preds = %20
  %29 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %30 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %91

34:                                               ; preds = %28
  %35 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %36 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %91

41:                                               ; preds = %34
  %42 = load i32, i32* @pte_bad_file, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @O_RDONLY, align 4
  %46 = call i32 @open(i8* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %91

50:                                               ; preds = %41
  %51 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @check_file_status(%struct.pt_section* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %88

57:                                               ; preds = %50
  %58 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @pt_sec_posix_map(%struct.pt_section* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %67 = call i32 @pt_sec_posix_map_success(%struct.pt_section* %66)
  store i32 %67, i32* %2, align 4
  br label %95

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = call i32* @fdopen(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @pte_bad_file, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %88

76:                                               ; preds = %68
  %77 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @pt_sec_file_map(%struct.pt_section* %77, i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %84 = call i32 @pt_sec_posix_map_success(%struct.pt_section* %83)
  store i32 %84, i32* %2, align 4
  br label %95

85:                                               ; preds = %76
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %91

88:                                               ; preds = %73, %56
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @close(i32 %89)
  br label %91

91:                                               ; preds = %88, %85, %49, %40, %33
  %92 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %93 = call i32 @pt_section_unlock(%struct.pt_section* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %82, %63, %25, %18, %10
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @pt_section_lock(%struct.pt_section*) #1

declare dso_local i32 @pt_sec_posix_map_success(%struct.pt_section*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @check_file_status(%struct.pt_section*, i32) #1

declare dso_local i32 @pt_sec_posix_map(%struct.pt_section*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @pt_sec_file_map(%struct.pt_section*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
