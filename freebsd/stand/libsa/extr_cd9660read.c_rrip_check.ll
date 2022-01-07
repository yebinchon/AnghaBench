; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660read.c_rrip_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660read.c_rrip_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i8*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SUSP_PRESENT = common dso_local global i32 0, align 4
@SUSP_EXTREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iso_directory_record*, i32*)* @rrip_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrip_check(%struct.iso_directory_record* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iso_directory_record*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %10 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %13 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @isonum_711(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %20 = bitcast %struct.iso_directory_record* %19 to i8*
  %21 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %22 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @isonum_711(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  %27 = icmp ugt i8* %18, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

29:                                               ; preds = %2
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %6, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SUSP_PRESENT, align 4
  %37 = call i64 @bcmp(i32 %35, i32 %36, i32 2)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %78

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @isonum_711(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 24
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %78

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 190
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 239
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %49
  store i32 0, i32* %3, align 4
  br label %78

64:                                               ; preds = %56
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @isonum_711(i32 %67)
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @SUSP_EXTREF, align 4
  %71 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %72 = call i64 @susp_lookup_record(i32 %70, %struct.iso_directory_record* %71, i32 0)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %78

77:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %63, %48, %39, %28
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @isonum_711(i32) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i64 @susp_lookup_record(i32, %struct.iso_directory_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
