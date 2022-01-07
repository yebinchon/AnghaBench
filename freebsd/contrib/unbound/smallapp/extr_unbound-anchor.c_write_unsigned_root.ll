; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_write_unsigned_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_write_unsigned_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@verb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [251 x i8] c"; autotrust trust anchor file\0A;;REVOKED\0A;;id: . 1\0A; This file was written by unbound-anchor on %s; It indicates that the root does not use DNSSEC\0A; to restart DNSSEC overwrite this file with a\0A; valid trustanchor or (empty-it and run unbound-anchor)\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to write 'unsigned' to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_unsigned_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_unsigned_root(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @time(i32* null)
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @verb, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* @errno, align 8
  %16 = call i8* @strerror(i64 %15)
  %17 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %16)
  br label %18

18:                                               ; preds = %13, %10
  br label %51

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @ctime(i32* %4)
  %22 = call i64 @fprintf(i32* %20, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i64, i64* @verb, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @verb, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* @errno, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* @errno, align 8
  %38 = call i8* @strerror(i64 %37)
  %39 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %33, %30
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @fflush(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @_fileno(i32* %44)
  %46 = call i64 @_get_osfhandle(i32 %45)
  %47 = trunc i64 %46 to i32
  %48 = call i32 @FlushFileBuffers(i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @fclose(i32* %49)
  br label %51

51:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @FlushFileBuffers(i32) #1

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i32 @_fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
