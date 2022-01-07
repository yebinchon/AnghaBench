; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_parse_loader_efi_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_parse_loader_efi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_loader_efi_config(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @efiblk_get_pdinfo_by_handle(i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %59

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @set_currdev_pdinfo(i32* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @stat(i8* %17, %struct.stat* %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %59

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %59

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @malloc(i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %54

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @read(i32 %37, i8* %38, i32 %40)
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %54

46:                                               ; preds = %36
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @boot_parse_cmdline(i8* %52)
  br label %54

54:                                               ; preds = %46, %45, %35
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %54, %27, %20, %13
  ret void
}

declare dso_local i32* @efiblk_get_pdinfo_by_handle(i32) #1

declare dso_local i32 @set_currdev_pdinfo(i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @boot_parse_cmdline(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
