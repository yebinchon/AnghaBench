; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgroup.c_getifgroups.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgroup.c_getifgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifgroupreq = type { i32, %struct.ifg_req*, i32 }
%struct.ifg_req = type { i8* }

@name = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGIFGROUP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"SIOCGIFGROUP\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getifgroups\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\09groups:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @getifgroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getifgroups(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifgroupreq, align 8
  %6 = alloca %struct.ifg_req*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 @memset(%struct.ifgroupreq* %5, i32 0, i32 24)
  %8 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @name, align 4
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = call i32 @strlcpy(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SIOCGIFGROUP, align 4
  %15 = ptrtoint %struct.ifgroupreq* %5 to i32
  %16 = call i32 @ioctl(i32 %13, i32 %14, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @EINVAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOTTY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %100

27:                                               ; preds = %22
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29, %1
  %31 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @calloc(i32 %36, i32 8)
  %38 = inttoptr i64 %37 to %struct.ifg_req*
  %39 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  store %struct.ifg_req* %38, %struct.ifg_req** %39, align 8
  %40 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %41 = load %struct.ifg_req*, %struct.ifg_req** %40, align 8
  %42 = icmp eq %struct.ifg_req* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %30
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SIOCGIFGROUP, align 4
  %48 = ptrtoint %struct.ifgroupreq* %5 to i32
  %49 = call i32 @ioctl(i32 %46, i32 %47, i32 %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  store i32 0, i32* %4, align 4
  %54 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %55 = load %struct.ifg_req*, %struct.ifg_req** %54, align 8
  store %struct.ifg_req* %55, %struct.ifg_req** %6, align 8
  br label %56

56:                                               ; preds = %88, %53
  %57 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %58 = icmp ne %struct.ifg_req* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %61, 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  br i1 %64, label %65, label %91

65:                                               ; preds = %63
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  %70 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %71 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %65
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %84 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %80, %65
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.ifg_req*, %struct.ifg_req** %6, align 8
  %90 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %89, i32 1
  store %struct.ifg_req* %90, %struct.ifg_req** %6, align 8
  br label %56

91:                                               ; preds = %63
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  %97 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %5, i32 0, i32 1
  %98 = load %struct.ifg_req*, %struct.ifg_req** %97, align 8
  %99 = call i32 @free(%struct.ifg_req* %98)
  br label %100

100:                                              ; preds = %96, %26
  ret void
}

declare dso_local i32 @memset(%struct.ifgroupreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(%struct.ifg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
