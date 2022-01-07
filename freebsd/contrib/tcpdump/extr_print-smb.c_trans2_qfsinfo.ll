; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_trans2_qfsinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_trans2_qfsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trans2_qfsinfo.level = internal global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@request = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"InfoLevel=[d]\0A\00", align 1
@unicodestr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"idFileSystem=[W]\0ASectorUnit=[D]\0AUnit=[D]\0AAvail=[D]\0ASectorSize=[d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"CreationTime=[T2]VolNameLength=[lb]\0AVolumeLabel=[c]\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Capabilities=[W]\0AMaxFileLen=[D]\0AVolNameLen=[lD]\0AVolume=[C]\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"UnknownLevel\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"data:\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @trans2_qfsinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trans2_qfsinfo(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i64, i64* @request, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK2(i32 %16, i32 2)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @EXTRACT_LE_16BITS(i32* %18)
  store i32 %19, i32* @trans2_qfsinfo.level, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* @unicodestr, align 4
  %28 = call i32 @smb_fdata(i32* %20, i32* %21, i8* %22, i32* %26, i32 %27)
  br label %45

29:                                               ; preds = %5
  %30 = load i32, i32* @trans2_qfsinfo.level, align 4
  switch i32 %30, label %34 [
    i32 1, label %31
    i32 2, label %32
    i32 261, label %33
  ]

31:                                               ; preds = %29
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %35

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %35

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %35

35:                                               ; preds = %34, %33, %32, %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* @unicodestr, align 4
  %44 = call i32 @smb_fdata(i32* %36, i32* %37, i8* %38, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %14
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.6 to i32*))
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @smb_print_data(i32* %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %45
  br label %62

56:                                               ; No predecessors!
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @tstr, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  br label %62

62:                                               ; preds = %56, %55
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @smb_fdata(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @smb_print_data(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
