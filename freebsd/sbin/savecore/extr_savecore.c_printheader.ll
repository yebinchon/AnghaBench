; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_printheader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_printheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kerneldumpheader = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"{Lwc:Dump header from device}{:dump_device/%s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"{P:  }{Lwc:Architecture}{:architecture/%s}\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"{P:  }{Lwc:Architecture Version}{:architecture_version/%u}\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"{P:  }{Lwc:Dump Length}{:dump_length_bytes/%lld}\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"{P:  }{Lwc:Blocksize}{:blocksize/%d}\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"{P:  }{Lwc:Compression}{:compression/%s}\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"{P:  }{Lwc:Dumptime}{:dumptime/%s}\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"{P:  }{Lwc:Hostname}{:hostname/%s}\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"{P:  }{Lwc:Magic}{:magic/%s}\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"{P:  }{Lwc:Version String}{:version_string/%s}\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"{P:  }{Lwc:Panic String}{:panic_string/%s}\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"{P:  }{Lwc:Dump Parity}{:dump_parity/%u}\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"{P:  }{Lwc:Bounds}{:bounds/%d}\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"{P:  }{Lwc:Dump Status}{:dump_status/%s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.kerneldumpheader*, i8*, i32, i32)* @printheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printheader(i32* %0, %struct.kerneldumpheader* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kerneldumpheader*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.kerneldumpheader* %1, %struct.kerneldumpheader** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @xo_flush_h(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %22 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %27 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @dtoh32(i32 %28)
  %30 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %25, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %32 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @dtoh64(i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %41 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @dtoh32(i32 %42)
  %44 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %46 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %51 [
    i32 131, label %48
    i32 132, label %49
    i32 130, label %50
  ]

48:                                               ; preds = %5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %52

49:                                               ; preds = %5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %52

50:                                               ; preds = %5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %52

51:                                               ; preds = %5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %52

52:                                               ; preds = %51, %50, %49, %48
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  %56 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %57 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @dtoh64(i32 %58)
  store i8* %59, i8** %12, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i8* @ctime(i8** %12)
  %62 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %65 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %70 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %75 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %80 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.kerneldumpheader*, %struct.kerneldumpheader** %7, align 8
  %85 = getelementptr inbounds %struct.kerneldumpheader, %struct.kerneldumpheader* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i8* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %10, align 4
  switch i32 %91, label %94 [
    i32 129, label %92
    i32 128, label %93
  ]

92:                                               ; preds = %52
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %13, align 8
  br label %95

93:                                               ; preds = %52
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %13, align 8
  br label %95

94:                                               ; preds = %52
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %13, align 8
  br label %95

95:                                               ; preds = %94, %93, %92
  %96 = load i32*, i32** %6, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @xo_flush_h(i32* %99)
  ret void
}

declare dso_local i32 @xo_flush_h(i32*) #1

declare dso_local i32 @xo_emit_h(i32*, i8*, ...) #1

declare dso_local i8* @dtoh32(i32) #1

declare dso_local i8* @dtoh64(i32) #1

declare dso_local i8* @ctime(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
