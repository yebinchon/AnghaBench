; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"archive_write_close\00", align 1
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@ARCHIVE_STATE_CLOSED = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*)* @_archive_write_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_close(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_write*
  store %struct.archive_write* %8, %struct.archive_write** %4, align 8
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 2
  %13 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @archive_check_magic(%struct.TYPE_3__* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %19 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %26 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ARCHIVE_STATE_CLOSED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %1
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %95

33:                                               ; preds = %24
  %34 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %35 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %34, i32 0, i32 2
  %36 = call i32 @archive_clear_error(%struct.TYPE_3__* %35)
  %37 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %38 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %45 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %44, i32 0, i32 0
  %46 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %45, align 8
  %47 = icmp ne i32 (%struct.archive_write*)* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 0
  %51 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %50, align 8
  %52 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %53 = call i32 %51(%struct.archive_write* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %43, %33
  %55 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %56 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %55, i32 0, i32 1
  %57 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %56, align 8
  %58 = icmp ne i32 (%struct.archive_write*)* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %61 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %60, i32 0, i32 1
  %62 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %61, align 8
  %63 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %64 = call i32 %62(%struct.archive_write* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %59
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %73 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @__archive_write_close_filter(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %71
  %82 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %83 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @ARCHIVE_STATE_CLOSED, align 4
  %90 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %91 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %31
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @archive_check_magic(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(%struct.TYPE_3__*) #1

declare dso_local i32 @__archive_write_close_filter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
