; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_writelabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_writelabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i32, i32, %struct.TYPE_2__*, i64, i8*, i8* }
%struct.TYPE_2__ = type { i32, i64 }

@lab = common dso_local global %struct.disklabel zeroinitializer, align 8
@disable_write = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"write to disk label suppressed - label was as follows:\00", align 1
@stdout = common dso_local global i32 0, align 4
@DISKMAGIC = common dso_local global i8* null, align 8
@installboot = common dso_local global i64 0, align 8
@lba_offset = common dso_local global i64 0, align 8
@bootarea = common dso_local global i64 0, align 8
@labeloffset = common dso_local global i64 0, align 8
@labelsoffset = common dso_local global i32 0, align 4
@specname = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@is_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot open file %s for writing label\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"PART\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot open provider %s for writing label\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Try to use gpart(8).\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bbsize = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"write %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @writelabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writelabel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.disklabel*, align 8
  store %struct.disklabel* @lab, %struct.disklabel** %5, align 8
  %6 = load i64, i64* @disable_write, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = call i32 @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @display(i32 %10, i32* null)
  store i32 0, i32* %1, align 4
  br label %109

12:                                               ; preds = %0
  %13 = load i8*, i8** @DISKMAGIC, align 8
  %14 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %15 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @DISKMAGIC, align 8
  %17 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %18 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %20 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %22 = call i64 @dkcksum(%struct.disklabel* %21)
  %23 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %24 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* @installboot, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = call i32 (...) @readboot()
  br label %29

29:                                               ; preds = %27, %12
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.disklabel, %struct.disklabel* @lab, i32 0, i32 0), align 8
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.disklabel, %struct.disklabel* @lab, i32 0, i32 2), align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load i64, i64* @lba_offset, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.disklabel, %struct.disklabel* @lab, i32 0, i32 2), align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %43
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  br label %53

53:                                               ; preds = %42, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i64, i64* @bootarea, align 8
  %59 = load i64, i64* @labeloffset, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @labelsoffset, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.disklabel, %struct.disklabel* @lab, i32 0, i32 1), align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %67 = call i32 @bsd_disklabel_le_enc(i64 %65, %struct.disklabel* %66)
  %68 = load i32, i32* @specname, align 4
  %69 = load i32, i32* @O_RDWR, align 4
  %70 = call i32 @open(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %57
  %74 = load i64, i64* @is_file, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @specname, align 4
  %78 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 1, i32* %1, align 4
  br label %109

79:                                               ; preds = %73
  %80 = load i32, i32* @errno, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79
  %82 = call i64 @geom_class_available(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @specname, align 4
  %87 = call i32 @warnc(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %109

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @specname, align 4
  %92 = call i32 @warnc(i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  store i32 1, i32* %1, align 4
  br label %109

93:                                               ; preds = %57
  %94 = load i32, i32* %3, align 4
  %95 = load i64, i64* @bootarea, align 8
  %96 = load i64, i64* @bbsize, align 8
  %97 = call i64 @write(i32 %94, i64 %95, i64 %96)
  %98 = load i64, i64* @bbsize, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* @specname, align 4
  %102 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @close(i32 %103)
  store i32 1, i32* %1, align 4
  br label %109

105:                                              ; preds = %93
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @close(i32 %106)
  br label %108

108:                                              ; preds = %105
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %108, %100, %89, %84, %76, %8
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @display(i32, i32*) #1

declare dso_local i64 @dkcksum(%struct.disklabel*) #1

declare dso_local i32 @readboot(...) #1

declare dso_local i32 @bsd_disklabel_le_enc(i64, %struct.disklabel*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i64 @geom_class_available(i8*) #1

declare dso_local i32 @warnc(i32, i8*, i32) #1

declare dso_local i64 @write(i32, i64, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
