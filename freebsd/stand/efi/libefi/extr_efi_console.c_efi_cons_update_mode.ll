; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_update_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_cons_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32)*, %struct.TYPE_12__*, i32 (%struct.TYPE_15__*, i32, i32*, i32*)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i8, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@conout = common dso_local global %struct.TYPE_15__* null, align 8
@mode = common dso_local global i32 0, align 4
@RB_SERIAL = common dso_local global i32 0, align 4
@buffer = common dso_local global %struct.TYPE_16__* null, align 8
@tp = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@teken = common dso_local global i32 0, align 4
@tf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"teken.fg_color\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@efi_set_colors = common dso_local global i32 0, align 4
@env_nounset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"teken.bg_color\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@DEFAULT_BGCOLOR = common dso_local global i32 0, align 4
@DEFAULT_FGCOLOR = common dso_local global i32 0, align 4
@bg_c = common dso_local global i32 0, align 4
@curx = common dso_local global i32 0, align 4
@cury = common dso_local global i32 0, align 4
@fg_c = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_cons_update_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** @conout, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %11 = load i32 (%struct.TYPE_15__*, i32, i32*, i32*)*, i32 (%struct.TYPE_15__*, i32, i32*, i32*)** %10, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @conout, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @conout, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %11(%struct.TYPE_15__* %12, i32 %17, i32* %2, i32* %3)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @EFI_ERROR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 80, i32* %2, align 4
  store i32 24, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %0
  %24 = call i32 (...) @parse_uefi_con_out()
  store i32 %24, i32* @mode, align 4
  %25 = load i32, i32* @mode, align 4
  %26 = load i32, i32* @RB_SERIAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %121

29:                                               ; preds = %23
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buffer, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tp, i32 0, i32 0), align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tp, i32 0, i32 1), align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %1, align 4
  br label %133

41:                                               ; preds = %36, %32
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buffer, align 8
  %43 = call i32 @free(%struct.TYPE_16__* %42)
  br label %46

44:                                               ; preds = %29
  %45 = call i32 @teken_init(i32* @teken, i32* @tf, i32* null)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tp, i32 0, i32 0), align 4
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tp, i32 0, i32 1), align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %2, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 12
  %54 = trunc i64 %53 to i32
  %55 = call %struct.TYPE_16__* @malloc(i32 %54)
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** @buffer, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buffer, align 8
  %57 = icmp eq %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %133

59:                                               ; preds = %46
  %60 = call i32 @teken_set_winsize(i32* @teken, %struct.TYPE_14__* @tp)
  %61 = call %struct.TYPE_13__* @teken_get_defattr(i32* @teken)
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snprintf(i8* %62, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EV_VOLATILE, align 4
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %69 = load i32, i32* @efi_set_colors, align 4
  %70 = load i32, i32* @env_nounset, align 4
  %71 = call i32 @env_setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %67, i8* %68, i32 %69, i32 %70)
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snprintf(i8* %72, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EV_VOLATILE, align 4
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %79 = load i32, i32* @efi_set_colors, align 4
  %80 = load i32, i32* @env_nounset, align 4
  %81 = call i32 @env_setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %77, i8* %78, i32 %79, i32 %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %117, %59
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %113, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %2, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buffer, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tp, i32 0, i32 1), align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i8 32, i8* %100, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** @buffer, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tp, i32 0, i32 1), align 4
  %105 = mul nsw i32 %103, %104
  %106 = add nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = bitcast %struct.TYPE_13__* %109 to i8*
  %112 = bitcast %struct.TYPE_13__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 8, i1 false)
  br label %113

113:                                              ; preds = %91
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %87

116:                                              ; preds = %87
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %82

120:                                              ; preds = %82
  br label %122

121:                                              ; preds = %23
  br label %122

122:                                              ; preds = %121, %120
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @snprintf(i8* %123, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %127 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %126, i32 1)
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %129 = load i32, i32* %2, align 4
  %130 = call i32 @snprintf(i8* %128, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %132 = call i32 @setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %131, i32 1)
  store i32 1, i32* %1, align 4
  br label %133

133:                                              ; preds = %122, %58, %40
  %134 = load i32, i32* %1, align 4
  ret i32 %134
}

declare dso_local i64 @EFI_ERROR(i32) #1

declare dso_local i32 @parse_uefi_con_out(...) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32 @teken_init(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @malloc(i32) #1

declare dso_local i32 @teken_set_winsize(i32*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @teken_get_defattr(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @env_setenv(i8*, i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
