; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_check_authkeys_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_check_authkeys_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.passwd = type { i32 }
%struct.sshkey = type { i32 }
%struct.sshauthopt = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%.200s:%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.passwd*, i32*, i8*, %struct.sshkey*, %struct.sshauthopt**)* @check_authkeys_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_authkeys_file(%struct.ssh* %0, %struct.passwd* %1, i32* %2, i8* %3, %struct.sshkey* %4, %struct.sshauthopt** %5) #0 {
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca %struct.sshauthopt**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store %struct.passwd* %1, %struct.passwd** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.sshkey* %4, %struct.sshkey** %11, align 8
  store %struct.sshauthopt** %5, %struct.sshauthopt*** %12, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.sshauthopt**, %struct.sshauthopt*** %12, align 8
  %20 = icmp ne %struct.sshauthopt** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load %struct.sshauthopt**, %struct.sshauthopt*** %12, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %22, align 8
  br label %23

23:                                               ; preds = %21, %6
  br label %24

24:                                               ; preds = %65, %50, %33, %23
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @getline(i8** %14, i64* %16, i32* %25)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load i64, i64* %18, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %18, align 8
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %24

34:                                               ; preds = %28
  %35 = load i8*, i8** %14, align 8
  store i8* %35, i8** %13, align 8
  %36 = call i32 @skip_space(i8** %13)
  %37 = load i8*, i8** %13, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %13, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 35
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40, %34
  br label %24

51:                                               ; preds = %45
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %18, align 8
  %55 = call i32 @snprintf(i8* %52, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %53, i64 %54)
  %56 = load %struct.ssh*, %struct.ssh** %7, align 8
  %57 = load %struct.passwd*, %struct.passwd** %8, align 8
  %58 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %61 = load %struct.sshauthopt**, %struct.sshauthopt*** %12, align 8
  %62 = call i64 @check_authkey_line(%struct.ssh* %56, %struct.passwd* %57, %struct.sshkey* %58, i8* %59, i8* %60, %struct.sshauthopt** %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  store i32 1, i32* %17, align 4
  br label %65

65:                                               ; preds = %64, %51
  br label %24

66:                                               ; preds = %24
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %17, align 4
  ret i32 %69
}

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @skip_space(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i64 @check_authkey_line(%struct.ssh*, %struct.passwd*, %struct.sshkey*, i8*, i8*, %struct.sshauthopt**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
