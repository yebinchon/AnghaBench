; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_create_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32*, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gssmask: %s:%d\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"krb5_storage_from_fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.client* (i32, i32, i8*)* @create_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.client* @create_client(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = call %struct.client* @ecalloc(i32 1, i32 32)
  store %struct.client* %10, %struct.client** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @estrdup(i8* %14)
  %16 = load %struct.client*, %struct.client** %7, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = trunc i64 %20 to i32
  %24 = call i32 @gethostname(i8* %22, i32 %23)
  %25 = load %struct.client*, %struct.client** %7, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @asprintf(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %27)
  %29 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %29)
  br label %30

30:                                               ; preds = %18, %13
  %31 = load %struct.client*, %struct.client** %7, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.client*, %struct.client** %7, align 8
  %35 = getelementptr inbounds %struct.client, %struct.client* %34, i32 0, i32 3
  %36 = bitcast i32* %35 to %struct.sockaddr*
  %37 = load %struct.client*, %struct.client** %7, align 8
  %38 = getelementptr inbounds %struct.client, %struct.client* %37, i32 0, i32 0
  %39 = call i32 @getpeername(i32 %33, %struct.sockaddr* %36, i32* %38)
  %40 = load %struct.client*, %struct.client** %7, align 8
  %41 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 3
  %42 = bitcast i32* %41 to %struct.sockaddr*
  %43 = load %struct.client*, %struct.client** %7, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.client*, %struct.client** %7, align 8
  %47 = getelementptr inbounds %struct.client, %struct.client* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NI_NUMERICHOST, align 4
  %50 = call i32 @getnameinfo(%struct.sockaddr* %42, i32 %45, i32 %48, i32 4, i32* null, i32 0, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32* @krb5_storage_from_fd(i32 %51)
  %53 = load %struct.client*, %struct.client** %7, align 8
  %54 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.client*, %struct.client** %7, align 8
  %56 = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %30
  %60 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %30
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load %struct.client*, %struct.client** %7, align 8
  ret %struct.client* %64
}

declare dso_local %struct.client* @ecalloc(i32, i32) #1

declare dso_local i32 @estrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @asprintf(i32*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
