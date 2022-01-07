; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-passwd.c_sys_auth_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-passwd.c_sys_auth_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.passwd* }
%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_auth_passwd(%struct.ssh* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.ssh*, %struct.ssh** %4, align 8
  %12 = getelementptr inbounds %struct.ssh, %struct.ssh* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.passwd*, %struct.passwd** %15, align 8
  store %struct.passwd* %16, %struct.passwd** %7, align 8
  store i8* null, i8** %9, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.passwd*, %struct.passwd** %7, align 8
  %23 = call i8* @shadow_pw(%struct.passwd* %22)
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.passwd*, %struct.passwd** %7, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i8* [ %23, %21 ], [ %27, %24 ]
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %71

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %55, %49, %43, %38
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i8* @xcrypt(i8* %58, i8* %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i1 [ false, %57 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %37
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @shadow_pw(%struct.passwd*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @xcrypt(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
