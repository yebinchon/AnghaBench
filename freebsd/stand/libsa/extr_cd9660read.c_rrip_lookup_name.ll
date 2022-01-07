; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660read.c_rrip_lookup_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660read.c_rrip_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RRIP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iso_directory_record*, i32, i64*)* @rrip_lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rrip_lookup_name(%struct.iso_directory_record* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iso_directory_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = icmp eq i64* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %43

12:                                               ; preds = %3
  %13 = load i32, i32* @RRIP_NAME, align 4
  %14 = load %struct.iso_directory_record*, %struct.iso_directory_record** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @susp_lookup_record(i32 %13, %struct.iso_directory_record* %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i8* null, i8** %4, align 8
  br label %43

21:                                               ; preds = %12
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 129, label %26
    i32 128, label %28
    i32 0, label %30
  ]

26:                                               ; preds = %21
  %27 = load i64*, i64** %7, align 8
  store i64 1, i64* %27, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %43

28:                                               ; preds = %21
  %29 = load i64*, i64** %7, align 8
  store i64 2, i64* %29, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %43

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @isonum_711(i32 %34)
  %36 = sub nsw i32 %35, 5
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = bitcast %struct.TYPE_4__* %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  store i8* %41, i8** %4, align 8
  br label %43

42:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %43

43:                                               ; preds = %42, %30, %28, %26, %20, %11
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i64 @susp_lookup_record(i32, %struct.iso_directory_record*, i32) #1

declare dso_local i32 @isonum_711(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
