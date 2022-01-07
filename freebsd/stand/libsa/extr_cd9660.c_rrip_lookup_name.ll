; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_rrip_lookup_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_rrip_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32 }
%struct.iso_directory_record = type { i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RRIP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.open_file*, %struct.iso_directory_record*, i32, i64*)* @rrip_lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rrip_lookup_name(%struct.open_file* %0, %struct.iso_directory_record* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca %struct.iso_directory_record*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.open_file* %0, %struct.open_file** %6, align 8
  store %struct.iso_directory_record* %1, %struct.iso_directory_record** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i64*, i64** %9, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %46

14:                                               ; preds = %4
  %15 = load %struct.open_file*, %struct.open_file** %6, align 8
  %16 = load i32, i32* @RRIP_NAME, align 4
  %17 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @susp_lookup_record(%struct.open_file* %15, i32 %16, %struct.iso_directory_record* %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i8* null, i8** %5, align 8
  br label %46

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 129, label %29
    i32 128, label %31
    i32 0, label %33
  ]

29:                                               ; preds = %24
  %30 = load i64*, i64** %9, align 8
  store i64 1, i64* %30, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %46

31:                                               ; preds = %24
  %32 = load i64*, i64** %9, align 8
  store i64 2, i64* %32, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @isonum_711(i32 %37)
  %39 = sub nsw i32 %38, 5
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = bitcast %struct.TYPE_4__* %42 to i8*
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  store i8* %44, i8** %5, align 8
  br label %46

45:                                               ; preds = %24
  store i8* null, i8** %5, align 8
  br label %46

46:                                               ; preds = %45, %33, %31, %29, %23, %13
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i64 @susp_lookup_record(%struct.open_file*, i32, %struct.iso_directory_record*, i32) #1

declare dso_local i32 @isonum_711(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
