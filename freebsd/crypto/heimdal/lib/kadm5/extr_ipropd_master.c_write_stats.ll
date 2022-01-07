; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_write_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_write_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_5__*, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Status for slaves, last updated: %s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Master version: %lu\0A\0A\00", align 1
@SLAVE_NAME = common dso_local global i32 0, align 4
@SLAVE_ADDRESS = common dso_local global i32 0, align 4
@SLAVE_VERSION = common dso_local global i32 0, align 4
@RTBL_ALIGN_RIGHT = common dso_local global i32 0, align 4
@SLAVE_STATUS = common dso_local global i32 0, align 4
@SLAVE_SEEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@SLAVE_F_DEAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i64)* @write_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_stats(i32 %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = call i32 @time(i32* null)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32* @open_stats(i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %138

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i64 @krb5_format_time(i32 %20, i32 %21, i8* %22, i32 100, i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = call i32* (...) @rtbl_create()
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %138

37:                                               ; preds = %19
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @SLAVE_NAME, align 4
  %40 = call i32 @rtbl_add_column(i32* %38, i32 %39, i32 0)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @SLAVE_ADDRESS, align 4
  %43 = call i32 @rtbl_add_column(i32* %41, i32 %42, i32 0)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @SLAVE_VERSION, align 4
  %46 = load i32, i32* @RTBL_ALIGN_RIGHT, align 4
  %47 = call i32 @rtbl_add_column(i32* %44, i32 %45, i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @SLAVE_STATUS, align 4
  %50 = call i32 @rtbl_add_column(i32* %48, i32 %49, i32 0)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @SLAVE_SEEN, align 4
  %53 = call i32 @rtbl_add_column(i32* %51, i32 %52, i32 0)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @rtbl_set_prefix(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @SLAVE_NAME, align 4
  %58 = call i32 @rtbl_set_column_prefix(i32* %56, i32 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %115, %37
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %130

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @SLAVE_NAME, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @rtbl_add_column_entry(i32* %63, i32 %64, i8* %67)
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = bitcast i32* %72 to %struct.sockaddr*
  %74 = call i64 @krb5_sockaddr2address(i32 %69, %struct.sockaddr* %73, i32* %11)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %62
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %79 = call i32 @krb5_print_address(i32* %11, i8* %78, i32 100, i32* null)
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @krb5_free_address(i32 %80, i32* %11)
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* @SLAVE_ADDRESS, align 4
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %85 = call i32 @rtbl_add_column_entry(i32* %82, i32 %83, i8* %84)
  br label %90

86:                                               ; preds = %62
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* @SLAVE_ADDRESS, align 4
  %89 = call i32 @rtbl_add_column_entry(i32* %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %77
  %91 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @snprintf(i8* %91, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* @SLAVE_VERSION, align 4
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %100 = call i32 @rtbl_add_column_entry(i32* %97, i32 %98, i8* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SLAVE_F_DEAD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %90
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @SLAVE_STATUS, align 4
  %110 = call i32 @rtbl_add_column_entry(i32* %108, i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %115

111:                                              ; preds = %90
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @SLAVE_STATUS, align 4
  %114 = call i32 @rtbl_add_column_entry(i32* %112, i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %121 = load i32, i32* @TRUE, align 4
  %122 = call i64 @krb5_format_time(i32 %116, i32 %119, i8* %120, i32 100, i32 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* @SLAVE_SEEN, align 4
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %126 = call i32 @rtbl_add_column_entry(i32* %123, i32 %124, i8* %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %5, align 8
  br label %59

130:                                              ; preds = %59
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @rtbl_format(i32* %131, i32* %132)
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @rtbl_destroy(i32* %134)
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @fclose(i32* %136)
  br label %138

138:                                              ; preds = %130, %34, %18
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32* @open_stats(i32) #1

declare dso_local i64 @krb5_format_time(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32* @rtbl_create(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rtbl_add_column(i32*, i32, i32) #1

declare dso_local i32 @rtbl_set_prefix(i32*, i8*) #1

declare dso_local i32 @rtbl_set_column_prefix(i32*, i32, i8*) #1

declare dso_local i32 @rtbl_add_column_entry(i32*, i32, i8*) #1

declare dso_local i64 @krb5_sockaddr2address(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i32, i32*) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rtbl_format(i32*, i32*) #1

declare dso_local i32 @rtbl_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
