; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_create_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_create_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Provided mediasize is larger than provider %s size.\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Sector size of provider %s is not power of 2 (%u).\00", align 1
@HAST_EXTENTSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Extent size (%jd) is less than sector size (%u).\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Extent size (%jd) is not multiple of sector size (%u).\00", align 1
@METADATA_SIZE = common dso_local global i64 0, align 8
@HAST_KEEPDIRTY = common dso_local global i64 0, align 8
@EX_IOERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Unable to allocate %zu bytes of memory for initial bitmap.\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to store initial bitmap on %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hast_resource*, i64, i64, i64)* @create_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_one(%struct.hast_resource* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hast_resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %13 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %17 = call i32 @provinfo(%struct.hast_resource* %16, i32 1)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EX_NOINPUT, align 4
  store i32 %20, i32* %11, align 4
  br label %156

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %26 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  br label %41

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %31 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %36 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, i64, ...) @pjdlog_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EX_DATAERR, align 4
  store i32 %39, i32* %11, align 4
  br label %156

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %43 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @powerof2(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %49 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %52 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i64, ...) @pjdlog_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %50, i64 %53)
  %55 = load i32, i32* @EX_DATAERR, align 4
  store i32 %55, i32* %11, align 4
  br label %156

56:                                               ; preds = %41
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i64, i64* @HAST_EXTENTSIZE, align 8
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %64 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %70 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, i64, ...) @pjdlog_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %68, i64 %71)
  %73 = load i32, i32* @EX_DATAERR, align 4
  store i32 %73, i32* %11, align 4
  br label %156

74:                                               ; preds = %61
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %77 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = srem i64 %75, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %84 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i64, ...) @pjdlog_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %82, i64 %85)
  %87 = load i32, i32* @EX_DATAERR, align 4
  store i32 %87, i32* %11, align 4
  br label %156

88:                                               ; preds = %74
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @METADATA_SIZE, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %94 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @activemap_calc_ondisk_size(i64 %91, i64 %92, i64 %95)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i64, i64* @HAST_KEEPDIRTY, align 8
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %99, %88
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @METADATA_SIZE, align 8
  %104 = sub nsw i64 %102, %103
  %105 = load i64, i64* %10, align 8
  %106 = sub i64 %104, %105
  %107 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %108 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %107, i32 0, i32 8
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %111 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %114 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %113, i32 0, i32 6
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* @METADATA_SIZE, align 8
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %115, %116
  %118 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %119 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %118, i32 0, i32 5
  store i64 %117, i64* %119, align 8
  %120 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %121 = call i32 @metadata_write(%struct.hast_resource* %120)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %101
  %124 = load i32, i32* @EX_IOERR, align 4
  store i32 %124, i32* %11, align 4
  br label %156

125:                                              ; preds = %101
  %126 = load i64, i64* %10, align 8
  %127 = call i8* @calloc(i32 1, i64 %126)
  store i8* %127, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i64, i64* %10, align 8
  %132 = call i32 (i8*, i64, ...) @pjdlog_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %131)
  %133 = load i32, i32* @EX_TEMPFAIL, align 4
  store i32 %133, i32* %11, align 4
  br label %156

134:                                              ; preds = %125
  %135 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %136 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* @METADATA_SIZE, align 8
  %141 = call i64 @pwrite(i64 %137, i8* %138, i64 %139, i64 %140)
  %142 = load i64, i64* %10, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %134
  %145 = load i32, i32* @LOG_ERR, align 4
  %146 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %147 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @pjdlog_errno(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %148)
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32, i32* @EX_IOERR, align 4
  store i32 %152, i32* %11, align 4
  br label %156

153:                                              ; preds = %134
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 @free(i8* %154)
  br label %156

156:                                              ; preds = %153, %144, %130, %123, %81, %67, %47, %34, %19
  %157 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %158 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp sge i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.hast_resource*, %struct.hast_resource** %5, align 8
  %163 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @close(i64 %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %168 = load i32, i32* %11, align 4
  ret i32 %168
}

declare dso_local i32 @pjdlog_prefix_set(i8*, i8*) #1

declare dso_local i32 @provinfo(%struct.hast_resource*, i32) #1

declare dso_local i32 @pjdlog_error(i8*, i64, ...) #1

declare dso_local i32 @powerof2(i64) #1

declare dso_local i64 @activemap_calc_ondisk_size(i64, i64, i64) #1

declare dso_local i32 @metadata_write(%struct.hast_resource*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @pwrite(i64, i8*, i64, i64) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
