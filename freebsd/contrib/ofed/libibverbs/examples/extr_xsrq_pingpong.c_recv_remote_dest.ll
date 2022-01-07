; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_recv_remote_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_recv_remote_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pingpong_dest* }
%struct.pingpong_dest = type { i32, i32, i32, i32, i32, i32, i32 }

@MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"client read\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%d/%d: Couldn't read remote address [%d]\0A\00", align 1
@ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MSG_SSCAN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ADDR_FORMAT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @recv_remote_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_remote_dest(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pingpong_dest*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [33 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MSG_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %39, %2
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MSG_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %16, i64 %24
  %26 = load i32, i32* @MSG_SIZE, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @read(i32 %22, i8* %25, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MSG_SIZE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %91

39:                                               ; preds = %21
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %17

43:                                               ; preds = %17
  %44 = load %struct.pingpong_dest*, %struct.pingpong_dest** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %44, i64 %46
  store %struct.pingpong_dest* %47, %struct.pingpong_dest** %6, align 8
  %48 = load i32, i32* @MSG_SSCAN, align 4
  %49 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %50 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %49, i32 0, i32 5
  %51 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %52 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %51, i32 0, i32 4
  %53 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %54 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %53, i32 0, i32 3
  %55 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %56 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %55, i32 0, i32 2
  %57 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %58 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %57, i32 0, i32 1
  %59 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %60 = call i32 @sscanf(i8* %16, i32 %48, i32* %50, i32* %52, i32* %54, i32* %56, i32* %58, i8* %59)
  %61 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %62 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %63 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %62, i32 0, i32 6
  %64 = call i32 @wire_gid_to_gid(i8* %61, i32* %63)
  %65 = load i32, i32* @AF_INET6, align 4
  %66 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %67 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %66, i32 0, i32 6
  %68 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %69 = call i32 @inet_ntop(i32 %65, i32* %67, i8* %68, i32 33)
  %70 = load i8*, i8** @ADDR_FORMAT, align 8
  %71 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %72 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %75 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %78 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %81 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %84 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %87 = call i32 @printf(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i8* %86)
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.pingpong_dest*, %struct.pingpong_dest** %6, align 8
  %90 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %43, %32
  %92 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @sscanf(i8*, i32, i32*, i32*, i32*, i32*, i32*, i8*) #2

declare dso_local i32 @wire_gid_to_gid(i8*, i32*) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
