; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_apply_overlays.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_apply_overlays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i64, i8*, i32, %struct.preloaded_file* }

@fdtp = common dso_local global i8* null, align 8
@fdtp_size = common dso_local global i64 0, align 8
@fdt_overlays_applied = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dtbo\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to allocate memory for DTB blob with overlays\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"DTB overlay '%s' not compatible\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"applying DTB overlay '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to allocate memory for overlay base\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"failed to open base dtb into overlay base\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to apply overlay: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdt_apply_overlays() #0 {
  %1 = alloca %struct.preloaded_file*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i8*, i8** @fdtp, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i64, i64* @fdtp_size, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %0
  br label %142

15:                                               ; preds = %11
  %16 = load i32, i32* @fdt_overlays_applied, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %142

19:                                               ; preds = %15
  store i64 0, i64* %2, align 8
  %20 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.preloaded_file* %20, %struct.preloaded_file** %1, align 8
  br label %21

21:                                               ; preds = %35, %19
  %22 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %23 = icmp ne %struct.preloaded_file* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i64, i64* %2, align 8
  %26 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %27 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %32 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %37 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %36, i32 0, i32 3
  %38 = load %struct.preloaded_file*, %struct.preloaded_file** %37, align 8
  store %struct.preloaded_file* %38, %struct.preloaded_file** %1, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load i64, i64* %2, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %142

43:                                               ; preds = %39
  %44 = load i64, i64* %2, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %142

50:                                               ; preds = %43
  %51 = load i8*, i8** @fdtp, align 8
  store i8* %51, i8** %5, align 8
  %52 = load i64, i64* @fdtp_size, align 8
  store i64 %52, i64* %4, align 8
  %53 = call %struct.preloaded_file* @file_findfile(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.preloaded_file* %53, %struct.preloaded_file** %1, align 8
  br label %54

54:                                               ; preds = %126, %50
  %55 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %56 = icmp ne %struct.preloaded_file* %55, null
  br i1 %56, label %57, label %130

57:                                               ; preds = %54
  %58 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %59 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %63 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @COPYOUT(i32 %60, i8* %61, i64 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @fdt_check_overlay_compatible(i8* %66, i8* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %57
  %72 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %73 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  br label %126

76:                                               ; preds = %57
  %77 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %78 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %83 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %81, %84
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = call i8* @malloc(i64 %86)
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %126

92:                                               ; preds = %76
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %3, align 8
  %96 = call i32 @fdt_open_into(i8* %93, i8* %94, i64 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @free(i8* %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %126

103:                                              ; preds = %92
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @fdt_overlay_apply(i8* %104, i8* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** @fdtp, align 8
  %112 = icmp ne i8* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @free(i8* %114)
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i8*, i8** %6, align 8
  store i8* %117, i8** %5, align 8
  %118 = load i64, i64* %3, align 8
  store i64 %118, i64* %4, align 8
  br label %125

119:                                              ; preds = %103
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32, i32* %8, align 4
  %123 = call i8* @fdt_strerror(i32 %122)
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %119, %116
  br label %126

126:                                              ; preds = %125, %99, %90, %71
  %127 = load %struct.preloaded_file*, %struct.preloaded_file** %1, align 8
  %128 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %127, i32 0, i32 3
  %129 = load %struct.preloaded_file*, %struct.preloaded_file** %128, align 8
  store %struct.preloaded_file* %129, %struct.preloaded_file** %1, align 8
  br label %54

130:                                              ; preds = %54
  %131 = load i8*, i8** %5, align 8
  %132 = load i8*, i8** @fdtp, align 8
  %133 = icmp ne i8* %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i8*, i8** @fdtp, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i8*, i8** %5, align 8
  store i8* %137, i8** @fdtp, align 8
  %138 = load i64, i64* %4, align 8
  store i64 %138, i64* @fdtp_size, align 8
  br label %139

139:                                              ; preds = %134, %130
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @free(i8* %140)
  store i32 1, i32* @fdt_overlays_applied, align 4
  br label %142

142:                                              ; preds = %139, %48, %42, %18, %14
  ret void
}

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @COPYOUT(i32, i8*, i64) #1

declare dso_local i32 @fdt_check_overlay_compatible(i8*, i8*) #1

declare dso_local i32 @fdt_open_into(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fdt_overlay_apply(i8*, i8*) #1

declare dso_local i8* @fdt_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
