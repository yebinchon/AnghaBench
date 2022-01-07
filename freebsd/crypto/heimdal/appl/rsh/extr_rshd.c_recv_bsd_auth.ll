; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_recv_bsd_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_recv_bsd_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.passwd = type { i64 }

@USERNAME_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"local username\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"remote username\00", align 1
@ARG_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Login incorrect.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.sockaddr_in*, %struct.sockaddr_in*, i8**, i8**, i8**)* @recv_bsd_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_bsd_auth(i32 %0, i32* %1, %struct.sockaddr_in* %2, %struct.sockaddr_in* %3, i8** %4, i8** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.passwd*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %10, align 8
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i8** %6, i8*** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i64, i64* @USERNAME_SZ, align 8
  %18 = call i8* @read_str(i32 %16, i64 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load i8**, i8*** %12, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* @USERNAME_SZ, align 8
  %22 = call i8* @read_str(i32 %20, i64 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8**, i8*** %13, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* @ARG_MAX, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i8* @read_str(i32 %24, i64 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i8**, i8*** %14, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i8**, i8*** %13, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call %struct.passwd* @getpwnam(i8* %30)
  store %struct.passwd* %31, %struct.passwd** %15, align 8
  %32 = load %struct.passwd*, %struct.passwd** %15, align 8
  %33 = icmp eq %struct.passwd* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @fatal(i32 %35, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %7
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.passwd*, %struct.passwd** %15, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i8**, i8*** %12, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %13, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @iruserok(i32 %41, i32 %46, i8* %48, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @fatal(i32 %54, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %37
  ret i32 0
}

declare dso_local i8* @read_str(i32, i64, i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @fatal(i32, i32*, i8*) #1

declare dso_local i64 @iruserok(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
