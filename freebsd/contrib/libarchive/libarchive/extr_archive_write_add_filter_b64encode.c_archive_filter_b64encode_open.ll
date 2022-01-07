; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_b64encode.c_archive_filter_b64encode_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_b64encode.c_archive_filter_b64encode_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { %struct.private_b64encode*, %struct.TYPE_5__*, i32 }
%struct.private_b64encode = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WRITE_MAGIC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't allocate data for b64encode buffer\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"begin-base64 %o %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_filter_b64encode_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_filter_b64encode_open(%struct.archive_write_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_filter*, align 8
  %4 = alloca %struct.private_b64encode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %3, align 8
  %8 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %9 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %8, i32 0, i32 0
  %10 = load %struct.private_b64encode*, %struct.private_b64encode** %9, align 8
  store %struct.private_b64encode* %10, %struct.private_b64encode** %4, align 8
  store i64 65536, i64* %5, align 8
  %11 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @__archive_write_open_filter(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ARCHIVE_WRITE_MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %30 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i64 @archive_write_get_bytes_per_block(%struct.TYPE_5__* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %5, align 8
  br label %48

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = urem i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %41, %38
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.private_b64encode*, %struct.private_b64encode** %4, align 8
  %52 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.private_b64encode*, %struct.private_b64encode** %4, align 8
  %54 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %53, i32 0, i32 3
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 512
  %57 = call i32* @archive_string_ensure(i32* %54, i64 %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %61 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @archive_set_error(%struct.TYPE_5__* %62, i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %65, i32* %2, align 4
  br label %80

66:                                               ; preds = %49
  %67 = load %struct.private_b64encode*, %struct.private_b64encode** %4, align 8
  %68 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %67, i32 0, i32 3
  %69 = load %struct.private_b64encode*, %struct.private_b64encode** %4, align 8
  %70 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.private_b64encode*, %struct.private_b64encode** %4, align 8
  %73 = getelementptr inbounds %struct.private_b64encode, %struct.private_b64encode* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @archive_string_sprintf(i32* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load %struct.private_b64encode*, %struct.private_b64encode** %4, align 8
  %78 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %79 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %78, i32 0, i32 0
  store %struct.private_b64encode* %77, %struct.private_b64encode** %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %66, %59, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @__archive_write_open_filter(i32) #1

declare dso_local i64 @archive_write_get_bytes_per_block(%struct.TYPE_5__*) #1

declare dso_local i32* @archive_string_ensure(i32*, i64) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @archive_string_sprintf(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
