; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_nuke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_nuke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_key = type { i32*, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Nuked key %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_key*, i32, i32)* @cmd_nuke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_nuke(%struct.g_bde_key* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.g_bde_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_bde_key* %0, %struct.g_bde_key** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.g_bde_key*, %struct.g_bde_key** %4, align 8
  %12 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32* @malloc(i64 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.g_bde_key*, %struct.g_bde_key** %4, align 8
  %17 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @memset(i32* %15, i32 0, i64 %18)
  %20 = load %struct.g_bde_key*, %struct.g_bde_key** %4, align 8
  %21 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.g_bde_key*, %struct.g_bde_key** %4, align 8
  %29 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = xor i64 %31, -1
  %33 = and i64 %27, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @lseek(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %3
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.g_bde_key*, %struct.g_bde_key** %4, align 8
  %48 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @write(i32 %45, i32* %46, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @free(i32* %51)
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.g_bde_key*, %struct.g_bde_key** %4, align 8
  %55 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %44
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 1, %62
  %64 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @write(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
