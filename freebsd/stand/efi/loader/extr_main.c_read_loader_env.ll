; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_read_loader_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_read_loader_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Can't fetch FreeBSD::%s we know is there\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Can't allocate %d bytes to fetch FreeBSD::%s env var\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"    Reading loader env vars from %s\0A\00", align 1
@boot_img = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @read_loader_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_loader_env(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %9, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @efi_freebsd_getenv(i8* %11, i8* null, i32* %7)
  %13 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** %8, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @efi_freebsd_getenv(i8* %22, i8* %23, i32* %7)
  %25 = load i64, i64* @EFI_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @free(i8* %28)
  store i8* null, i8** %8, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %43

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @efi_freebsd_delenv(i8* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %38, %27
  br label %48

44:                                               ; preds = %15
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @boot_img, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @parse_loader_efi_config(i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %52, %49
  ret void
}

declare dso_local i64 @efi_freebsd_getenv(i8*, i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @efi_freebsd_delenv(i8*) #1

declare dso_local i32 @parse_loader_efi_config(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
