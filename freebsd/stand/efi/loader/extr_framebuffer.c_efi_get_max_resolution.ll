; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efi_get_max_resolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efi_get_max_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.named_resolution = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"efi_max_resolution\00", align 1
@resolutions = common dso_local global %struct.named_resolution* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @efi_get_max_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_get_max_resolution(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.named_resolution*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %72

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.named_resolution*, %struct.named_resolution** @resolutions, align 8
  %20 = call i32 @nitems(%struct.named_resolution* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load %struct.named_resolution*, %struct.named_resolution** @resolutions, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.named_resolution, %struct.named_resolution* %23, i64 %25
  store %struct.named_resolution* %26, %struct.named_resolution** %5, align 8
  %27 = load %struct.named_resolution*, %struct.named_resolution** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @efi_resolution_compare(%struct.named_resolution* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.named_resolution*, %struct.named_resolution** %5, align 8
  %33 = getelementptr inbounds %struct.named_resolution, %struct.named_resolution* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %3, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.named_resolution*, %struct.named_resolution** %5, align 8
  %37 = getelementptr inbounds %struct.named_resolution, %struct.named_resolution* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  br label %72

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %72

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 120)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @free(i8* %56)
  br label %72

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  store i8 0, i8* %60, align 1
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @strtol(i8* %62, i32* null, i32 0)
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %3, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @strtol(i8* %66, i32* null, i32 0)
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %58, %55, %49, %31, %15
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @nitems(%struct.named_resolution*) #1

declare dso_local i64 @efi_resolution_compare(%struct.named_resolution*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
