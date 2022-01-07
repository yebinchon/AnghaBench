; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_proc_test.c_verify_bkpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/tests/extr_proc_test.c_verify_bkpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@PS_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"process has state %d\00", align 1
@REG_PC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to obtain PC for '%s'\00", align 1
@target_prog_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"program counter 0x%lx doesn't match expected value 0x%jx\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to look up symbol at 0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to look up map for address 0x%lx\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"expected map name '%s' doesn't match '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_handle*, %struct.TYPE_9__*, i8*, i8*)* @verify_bkpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_bkpt(%struct.proc_handle* %0, %struct.TYPE_9__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.proc_handle*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %19 = call i32 @proc_wstatus(%struct.proc_handle* %18)
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* @PS_STOP, align 4
  %22 = load i32, i32* %17, align 4
  %23 = call i32 (i32, i32, i8*, ...) @ATF_REQUIRE_EQ_MSG(i32 %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %25 = load i32, i32* @REG_PC, align 4
  %26 = call i32 @proc_regget(%struct.proc_handle* %24, i32 %25, i32* %15)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @target_prog_file, align 4
  %29 = call i32 (i32, i32, i8*, ...) @ATF_REQUIRE_EQ_MSG(i32 %27, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 @proc_bkptregadj(i32* %15)
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ATF_CHECK_EQ_MSG(i32 %31, i64 %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i8* @malloc(i64 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @ATF_REQUIRE(i32 %49)
  %51 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @proc_addr2sym(%struct.proc_handle* %51, i32 %52, i8* %53, i64 %54, %struct.TYPE_9__* %12)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 (i32, i32, i8*, ...) @ATF_REQUIRE_EQ_MSG(i32 %56, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = call i32 @memcmp(%struct.TYPE_9__* %59, %struct.TYPE_9__* %12, i32 8)
  %61 = call i32 @ATF_REQUIRE_EQ(i32 %60, i32 0)
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strcmp(i8* %62, i8* %63)
  %65 = call i32 @ATF_REQUIRE_EQ(i32 %64, i32 0)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call %struct.TYPE_8__* @proc_addr2map(%struct.proc_handle* %68, i32 %69)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %13, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @ATF_REQUIRE_MSG(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @strdup(i32 %78)
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i8* @basename(i8* %80)
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @strcmp(i8* %82, i8* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 (i32, i32, i8*, ...) @ATF_REQUIRE_EQ_MSG(i32 %84, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @free(i8* %88)
  ret void
}

declare dso_local i32 @proc_wstatus(%struct.proc_handle*) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i32, i8*, ...) #1

declare dso_local i32 @proc_regget(%struct.proc_handle*, i32, i32*) #1

declare dso_local i32 @proc_bkptregadj(i32*) #1

declare dso_local i32 @ATF_CHECK_EQ_MSG(i32, i64, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @proc_addr2sym(%struct.proc_handle*, i32, i8*, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_8__* @proc_addr2map(%struct.proc_handle*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
