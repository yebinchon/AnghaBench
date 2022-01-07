; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_proto.c_choice_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_proto.c_choice_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32*)* }

@.str = private unnamed_addr constant [12 x i8] c"BootCurrent\00", align 1
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"   BootCurrent: %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"BootOrder\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"   BootOrder:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" %04x%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"[*]\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"   Probing %zu block devices...\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@prio_str = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@num_boot_modules = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@boot_modules = common dso_local global %struct.TYPE_3__** null, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"Failed to load '%s'\0A\00", align 1
@PATH_LOADER_EFI = common dso_local global i8* null, align 8
@BS = common dso_local global %struct.TYPE_4__* null, align 8
@EFI_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@IH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @choice_protocol(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 4, i64* %8, align 8
  %17 = call i64 (i8*, ...) @efi_global_getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %7, i64* %8)
  %18 = load i64, i64* @EFI_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i64 400, i64* %8, align 8
  %23 = call i64 (i8*, ...) @efi_global_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), [100 x i32]* %9, i64* %8)
  %24 = load i64, i64* @EFI_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %48, %26
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %8, align 8
  %32 = udiv i64 %31, 4
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %38, i8* %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %28

51:                                               ; preds = %28
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %20
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %77, %54
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @probe_handle(i32 %67, i32* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i8**, i8*** @prio_str, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %58

80:                                               ; preds = %58
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %96, %80
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @num_boot_modules, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @boot_modules, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32 (...)*, i32 (...)** %93, align 8
  %95 = call i32 (...) %94()
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %82

99:                                               ; preds = %82
  %100 = call i64 @load_loader(i32** %13, i32** %14, i8** %15, i64* %16, i32 1)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @EFI_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = call i64 @load_loader(i32** %13, i32** %14, i8** %15, i64* %16, i32 0)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @EFI_SUCCESS, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** @PATH_LOADER_EFI, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %110)
  br label %119

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i32*, i32** %13, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i64, i64* %16, align 8
  %118 = call i32 @try_boot(i32* %114, i32* %115, i8* %116, i64 %117)
  br label %119

119:                                              ; preds = %113, %109
  ret void
}

declare dso_local i64 @efi_global_getenv(i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @probe_handle(i32, i32*) #1

declare dso_local i64 @load_loader(i32**, i32**, i8**, i64*, i32) #1

declare dso_local i32 @try_boot(i32*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
