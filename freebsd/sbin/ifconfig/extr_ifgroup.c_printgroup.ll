; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgroup.c_printgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgroup.c_printgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifgroupreq = type { i32, %struct.ifg_req*, i32 }
%struct.ifg_req = type { i8* }

@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"socket(AF_LOCAL,SOCK_DGRAM)\00", align 1
@SIOCGIFGMEMB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@exit_code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SIOCGIFGMEMB\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"printgroup\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @printgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printgroup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifgroupreq, align 8
  %4 = alloca %struct.ifg_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @AF_LOCAL, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = call i32 @bzero(%struct.ifgroupreq* %3, i32 24)
  %17 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strlcpy(i32 %18, i8* %19, i32 4)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SIOCGIFGMEMB, align 4
  %23 = ptrtoint %struct.ifgroupreq* %3 to i32
  %24 = call i32 @ioctl(i32 %21, i32 %22, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %44

26:                                               ; preds = %15
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINVAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOTTY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %30, %26
  %39 = load i32, i32* @exit_code, align 4
  %40 = call i32 @exit(i32 %39) #3
  unreachable

41:                                               ; preds = %34
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43, %15
  %45 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.ifg_req* @calloc(i32 1, i32 %47)
  %49 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %3, i32 0, i32 1
  store %struct.ifg_req* %48, %struct.ifg_req** %49, align 8
  %50 = icmp eq %struct.ifg_req* %48, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SIOCGIFGMEMB, align 4
  %56 = ptrtoint %struct.ifgroupreq* %3 to i32
  %57 = call i32 @ioctl(i32 %54, i32 %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  %62 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %3, i32 0, i32 1
  %63 = load %struct.ifg_req*, %struct.ifg_req** %62, align 8
  store %struct.ifg_req* %63, %struct.ifg_req** %4, align 8
  br label %64

64:                                               ; preds = %84, %61
  %65 = load %struct.ifg_req*, %struct.ifg_req** %4, align 8
  %66 = icmp ne %struct.ifg_req* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %69, 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %73, label %87

73:                                               ; preds = %71
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  %78 = load %struct.ifg_req*, %struct.ifg_req** %4, align 8
  %79 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load %struct.ifg_req*, %struct.ifg_req** %4, align 8
  %86 = getelementptr inbounds %struct.ifg_req, %struct.ifg_req* %85, i32 1
  store %struct.ifg_req* %86, %struct.ifg_req** %4, align 8
  br label %64

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %3, i32 0, i32 1
  %89 = load %struct.ifg_req*, %struct.ifg_req** %88, align 8
  %90 = call i32 @free(%struct.ifg_req* %89)
  %91 = load i32, i32* @exit_code, align 4
  %92 = call i32 @exit(i32 %91) #3
  unreachable
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.ifgroupreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.ifg_req* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(%struct.ifg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
