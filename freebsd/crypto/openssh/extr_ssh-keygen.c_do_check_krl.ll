; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_check_krl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_check_krl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.ssh_krl = type { i32 }
%struct.sshkey = type { i32 }

@identity_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"KRL checking requires an input file\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot load public key %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s%s%s%s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"REVOKED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, i32, i8**)* @do_check_krl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_check_krl(%struct.passwd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ssh_krl*, align 8
  %12 = alloca %struct.sshkey*, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** @identity_file, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i8*, i8** @identity_file, align 8
  %21 = call i32 @load_krl(i8* %20, %struct.ssh_krl** %11)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %78, %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %81

26:                                               ; preds = %22
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @sshkey_load_public(i8* %31, %struct.sshkey** %12, i8** %10)
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ssh_err(i32 %40)
  %42 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %34, %26
  %44 = load %struct.ssh_krl*, %struct.ssh_krl** %11, align 8
  %45 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %46 = call i32 @ssh_krl_check_key(%struct.ssh_krl* %44, %struct.sshkey* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i8**, i8*** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %69 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %57, i8* %58, i8* %64, i8* %68)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %75 = call i32 @sshkey_free(%struct.sshkey* %74)
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %22

81:                                               ; preds = %22
  %82 = load %struct.ssh_krl*, %struct.ssh_krl** %11, align 8
  %83 = call i32 @ssh_krl_free(%struct.ssh_krl* %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @exit(i32 %84) #3
  unreachable
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @load_krl(i8*, %struct.ssh_krl**) #1

declare dso_local i32 @sshkey_load_public(i8*, %struct.sshkey**, i8**) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @ssh_krl_check_key(%struct.ssh_krl*, %struct.sshkey*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ssh_krl_free(%struct.ssh_krl*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
