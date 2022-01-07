; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_rrip_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_rrip_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32 }
%struct.iso_directory_record = type { i8*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SUSP_PRESENT = common dso_local global i32 0, align 4
@SUSP_EXTREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.iso_directory_record*, i32*)* @rrip_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrip_check(%struct.open_file* %0, %struct.iso_directory_record* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca %struct.iso_directory_record*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store %struct.iso_directory_record* %1, %struct.iso_directory_record** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.iso_directory_record*, %struct.iso_directory_record** %6, align 8
  %12 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.iso_directory_record*, %struct.iso_directory_record** %6, align 8
  %15 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @isonum_711(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %13, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.iso_directory_record*, %struct.iso_directory_record** %6, align 8
  %22 = bitcast %struct.iso_directory_record* %21 to i8*
  %23 = load %struct.iso_directory_record*, %struct.iso_directory_record** %6, align 8
  %24 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @isonum_711(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  %29 = icmp ugt i8* %20, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

31:                                               ; preds = %3
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SUSP_PRESENT, align 4
  %39 = call i64 @bcmp(i32 %37, i32 %38, i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %81

42:                                               ; preds = %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @isonum_711(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 24
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %81

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 190
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 239
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %51
  store i32 0, i32* %4, align 4
  br label %81

66:                                               ; preds = %58
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @isonum_711(i32 %69)
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.open_file*, %struct.open_file** %5, align 8
  %73 = load i32, i32* @SUSP_EXTREF, align 4
  %74 = load %struct.iso_directory_record*, %struct.iso_directory_record** %6, align 8
  %75 = call i64 @susp_lookup_record(%struct.open_file* %72, i32 %73, %struct.iso_directory_record* %74, i32 0)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %9, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %81

80:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79, %65, %50, %41, %30
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @isonum_711(i32) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i64 @susp_lookup_record(%struct.open_file*, i32, %struct.iso_directory_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
