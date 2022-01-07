; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_local_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_local_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uds_ctx = type { i64, i32 }
%struct.sockaddr_un = type { i64, i8* }
%struct.sockaddr = type { i32 }

@UDS_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@AF_UNIX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"uds://%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @uds_local_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uds_local_address(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uds_ctx*, align 8
  %8 = alloca %struct.sockaddr_un, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.uds_ctx*
  store %struct.uds_ctx* %11, %struct.uds_ctx** %7, align 8
  %12 = load %struct.uds_ctx*, %struct.uds_ctx** %7, align 8
  %13 = icmp ne %struct.uds_ctx* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load %struct.uds_ctx*, %struct.uds_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UDS_CTX_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @PJDLOG_ASSERT(i32 %25)
  store i32 16, i32* %9, align 4
  %27 = load %struct.uds_ctx*, %struct.uds_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*
  %31 = call i64 @getsockname(i32 %29, %struct.sockaddr* %30, i32* %9)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @strlcpy(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = icmp ult i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @PJDLOG_VERIFY(i32 %39)
  br label %72

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_UNIX, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @PJDLOG_ASSERT(i32 %46)
  %48 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @strlcpy(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @PJDLOG_VERIFY(i32 %60)
  br label %72

62:                                               ; preds = %41
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @snprintf(i8* %63, i64 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i64, i64* %6, align 8
  %69 = icmp slt i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @PJDLOG_VERIFY(i32 %70)
  br label %72

72:                                               ; preds = %62, %54, %33
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
