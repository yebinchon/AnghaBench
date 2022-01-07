; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_bfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No executable file specified.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"MEMSIZE=\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Setting top-of-memory to 0x%lx\0A\00", align 1
@RDIInfo_SetTopMem = common dso_local global i32 0, align 4
@RDIError_NoError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"RDI_info: %s\0A\00", align 1
@RDISet_Cmdline = common dso_local global i32 0, align 4
@TARGET_SIGNAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @arm_rdi_create_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_rdi_create_inferior(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @exec_bfd, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* @exec_bfd, align 8
  %24 = call i64 @bfd_get_start_address(i64 %23)
  store i64 %24, i64* %12, align 8
  %25 = call i32 (...) @arm_rdi_kill()
  %26 = call i32 (...) @remove_breakpoints()
  %27 = call i32 (...) @init_wait_for_inferior()
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = add nsw i32 %30, %32
  %34 = add nsw i32 %33, 1
  %35 = add nsw i32 %34, 10
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @alloca(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcat(i8* %41, i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcat(i8* %46, i8* %47)
  %49 = call i32 @pid_to_ptid(i32 42)
  store i32 %49, i32* @inferior_ptid, align 4
  %50 = call i32 (...) @insert_breakpoints()
  %51 = load i8**, i8*** %6, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %85

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %81, %53
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 9
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = call i64 @strtoul(i8* %67, i8** %14, i32 0)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i32 @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @RDIInfo_SetTopMem, align 4
  %72 = call i32 @angel_RDI_info(i32 %71, i64* %13, i64* %10)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @RDIError_NoError, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @rdi_error_message(i32 %77)
  %79 = call i32 @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %76, %63
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i8**, i8*** %6, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %6, align 8
  br label %54

84:                                               ; preds = %54
  br label %85

85:                                               ; preds = %84, %22
  %86 = load i8*, i8** %11, align 8
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %9, align 8
  %88 = load i32, i32* @RDISet_Cmdline, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = bitcast i8* %89 to i64*
  %91 = call i32 @angel_RDI_info(i32 %88, i64* %90, i64* %10)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @RDIError_NoError, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @rdi_error_message(i32 %96)
  %98 = call i32 @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %95, %85
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* @TARGET_SIGNAL_DEFAULT, align 4
  %102 = call i32 @proceed(i64 %100, i32 %101, i32 0)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @bfd_get_start_address(i64) #1

declare dso_local i32 @arm_rdi_kill(...) #1

declare dso_local i32 @remove_breakpoints(...) #1

declare dso_local i32 @init_wait_for_inferior(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @insert_breakpoints(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @printf_filtered(i8*, i64) #1

declare dso_local i32 @angel_RDI_info(i32, i64*, i64*) #1

declare dso_local i64 @rdi_error_message(i32) #1

declare dso_local i32 @proceed(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
