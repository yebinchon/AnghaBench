; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-passwd.c_auth_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-passwd.c_auth_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64 }
%struct.ssh = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.passwd* }
%struct.passwd = type { i64 }

@MAX_PASSWORD_LEN = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PERMIT_YES = common dso_local global i64 0, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_password(%struct.ssh* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ssh*, %struct.ssh** %4, align 8
  %11 = getelementptr inbounds %struct.ssh, %struct.ssh* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.passwd*, %struct.passwd** %14, align 8
  store %struct.passwd* %15, %struct.passwd** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = load i64, i64* @MAX_PASSWORD_LEN, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.passwd*, %struct.passwd** %7, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 0), align 8
  %31 = load i64, i64* @PERMIT_YES, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %29, %24
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 1), align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %63

43:                                               ; preds = %39, %34
  %44 = load %struct.ssh*, %struct.ssh** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @sys_auth_passwd(%struct.ssh* %44, i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.ssh*, %struct.ssh** %4, align 8
  %53 = call i32 @auth_restrict_session(%struct.ssh* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ false, %54 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %42, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sys_auth_passwd(%struct.ssh*, i8*) #1

declare dso_local i32 @auth_restrict_session(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
