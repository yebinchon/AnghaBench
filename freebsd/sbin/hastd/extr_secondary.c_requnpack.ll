; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_requnpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_requnpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i32 }
%struct.hio = type { i32, i32, i64, i32, i32, i32 }
%struct.nv = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Header contains no 'cmd' field.\00", align 1
@EINVAL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Header contains no 'seq' field.\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"memsync\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Header is missing 'offset' field.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Header is missing 'length' field.\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Data length is zero.\00", align 1
@MAXPHYS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Data length is too large (%ju > %ju).\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Offset %ju is not multiple of sector size.\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Length %ju is not multiple of sector size.\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Data offset is too large (%ju > %ju).\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Header contains invalid 'cmd' (%hhu).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hast_resource*, %struct.hio*, %struct.nv*)* @requnpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @requnpack(%struct.hast_resource* %0, %struct.hio* %1, %struct.nv* %2) #0 {
  %4 = alloca %struct.hast_resource*, align 8
  %5 = alloca %struct.hio*, align 8
  %6 = alloca %struct.nv*, align 8
  store %struct.hast_resource* %0, %struct.hast_resource** %4, align 8
  store %struct.hio* %1, %struct.hio** %5, align 8
  store %struct.nv* %2, %struct.nv** %6, align 8
  %7 = load %struct.nv*, %struct.nv** %6, align 8
  %8 = call i32 @nv_get_uint8(%struct.nv* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.hio*, %struct.hio** %5, align 8
  %10 = getelementptr inbounds %struct.hio, %struct.hio* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.hio*, %struct.hio** %5, align 8
  %12 = getelementptr inbounds %struct.hio, %struct.hio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** @EINVAL, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.hio*, %struct.hio** %5, align 8
  %20 = getelementptr inbounds %struct.hio, %struct.hio* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %192

21:                                               ; preds = %3
  %22 = load %struct.hio*, %struct.hio** %5, align 8
  %23 = getelementptr inbounds %struct.hio, %struct.hio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 130
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.nv*, %struct.nv** %6, align 8
  %28 = call i8* @nv_get_uint64(%struct.nv* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.hio*, %struct.hio** %5, align 8
  %31 = getelementptr inbounds %struct.hio, %struct.hio* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.hio*, %struct.hio** %5, align 8
  %33 = getelementptr inbounds %struct.hio, %struct.hio* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i8*, i8** @EINVAL, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.hio*, %struct.hio** %5, align 8
  %41 = getelementptr inbounds %struct.hio, %struct.hio* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %192

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.hio*, %struct.hio** %5, align 8
  %45 = getelementptr inbounds %struct.hio, %struct.hio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %180 [
    i32 131, label %47
    i32 130, label %47
    i32 128, label %48
    i32 129, label %53
    i32 132, label %53
  ]

47:                                               ; preds = %43, %43
  br label %189

48:                                               ; preds = %43
  %49 = load %struct.nv*, %struct.nv** %6, align 8
  %50 = call i32 @nv_exists(%struct.nv* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.hio*, %struct.hio** %5, align 8
  %52 = getelementptr inbounds %struct.hio, %struct.hio* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %43, %43, %48
  %54 = load %struct.nv*, %struct.nv** %6, align 8
  %55 = call i8* @nv_get_uint64(%struct.nv* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.hio*, %struct.hio** %5, align 8
  %58 = getelementptr inbounds %struct.hio, %struct.hio* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nv*, %struct.nv** %6, align 8
  %60 = call i32 @nv_error(%struct.nv* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i8*, i8** @EINVAL, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.hio*, %struct.hio** %5, align 8
  %67 = getelementptr inbounds %struct.hio, %struct.hio* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %192

68:                                               ; preds = %53
  %69 = load %struct.nv*, %struct.nv** %6, align 8
  %70 = call i8* @nv_get_uint64(%struct.nv* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.hio*, %struct.hio** %5, align 8
  %73 = getelementptr inbounds %struct.hio, %struct.hio* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.nv*, %struct.nv** %6, align 8
  %75 = call i32 @nv_error(%struct.nv* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i8*, i8** @EINVAL, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.hio*, %struct.hio** %5, align 8
  %82 = getelementptr inbounds %struct.hio, %struct.hio* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %192

83:                                               ; preds = %68
  %84 = load %struct.hio*, %struct.hio** %5, align 8
  %85 = getelementptr inbounds %struct.hio, %struct.hio* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %90 = load i8*, i8** @EINVAL, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.hio*, %struct.hio** %5, align 8
  %93 = getelementptr inbounds %struct.hio, %struct.hio* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %192

94:                                               ; preds = %83
  %95 = load %struct.hio*, %struct.hio** %5, align 8
  %96 = getelementptr inbounds %struct.hio, %struct.hio* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 132
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load %struct.hio*, %struct.hio** %5, align 8
  %101 = getelementptr inbounds %struct.hio, %struct.hio* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MAXPHYS, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = load %struct.hio*, %struct.hio** %5, align 8
  %107 = getelementptr inbounds %struct.hio, %struct.hio* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MAXPHYS, align 4
  %110 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i8*, i8** @EINVAL, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.hio*, %struct.hio** %5, align 8
  %114 = getelementptr inbounds %struct.hio, %struct.hio* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %192

115:                                              ; preds = %99, %94
  %116 = load %struct.hio*, %struct.hio** %5, align 8
  %117 = getelementptr inbounds %struct.hio, %struct.hio* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %120 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = srem i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.hio*, %struct.hio** %5, align 8
  %126 = getelementptr inbounds %struct.hio, %struct.hio* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %127)
  %129 = load i8*, i8** @EINVAL, align 8
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.hio*, %struct.hio** %5, align 8
  %132 = getelementptr inbounds %struct.hio, %struct.hio* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %192

133:                                              ; preds = %115
  %134 = load %struct.hio*, %struct.hio** %5, align 8
  %135 = getelementptr inbounds %struct.hio, %struct.hio* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %138 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = srem i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %133
  %143 = load %struct.hio*, %struct.hio** %5, align 8
  %144 = getelementptr inbounds %struct.hio, %struct.hio* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %145)
  %147 = load i8*, i8** @EINVAL, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.hio*, %struct.hio** %5, align 8
  %150 = getelementptr inbounds %struct.hio, %struct.hio* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %192

151:                                              ; preds = %133
  %152 = load %struct.hio*, %struct.hio** %5, align 8
  %153 = getelementptr inbounds %struct.hio, %struct.hio* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.hio*, %struct.hio** %5, align 8
  %156 = getelementptr inbounds %struct.hio, %struct.hio* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %154, %157
  %159 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %160 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %158, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %151
  %164 = load %struct.hio*, %struct.hio** %5, align 8
  %165 = getelementptr inbounds %struct.hio, %struct.hio* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.hio*, %struct.hio** %5, align 8
  %168 = getelementptr inbounds %struct.hio, %struct.hio* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %166, %169
  %171 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %172 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %170, i32 %173)
  %175 = load i8*, i8** @EINVAL, align 8
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.hio*, %struct.hio** %5, align 8
  %178 = getelementptr inbounds %struct.hio, %struct.hio* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %192

179:                                              ; preds = %151
  br label %189

180:                                              ; preds = %43
  %181 = load %struct.hio*, %struct.hio** %5, align 8
  %182 = getelementptr inbounds %struct.hio, %struct.hio* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %183)
  %185 = load i8*, i8** @EINVAL, align 8
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.hio*, %struct.hio** %5, align 8
  %188 = getelementptr inbounds %struct.hio, %struct.hio* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %192

189:                                              ; preds = %179, %47
  %190 = load %struct.hio*, %struct.hio** %5, align 8
  %191 = getelementptr inbounds %struct.hio, %struct.hio* %190, i32 0, i32 1
  store i32 0, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %180, %163, %142, %124, %105, %88, %77, %62, %36, %15
  %193 = load %struct.hio*, %struct.hio** %5, align 8
  %194 = getelementptr inbounds %struct.hio, %struct.hio* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  ret i32 %195
}

declare dso_local i32 @nv_get_uint8(%struct.nv*, i8*) #1

declare dso_local i32 @pjdlog_error(i8*, ...) #1

declare dso_local i8* @nv_get_uint64(%struct.nv*, i8*) #1

declare dso_local i32 @nv_exists(%struct.nv*, i8*) #1

declare dso_local i32 @nv_error(%struct.nv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
