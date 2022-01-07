; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_print_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_print_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.sshkey = type { i32 }
%struct.stat = type { i32 }

@have_identity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Enter file in which the key is\00", align 1
@identity_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"sshkey_write failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*)* @do_print_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_print_public(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %6 = load i32, i32* @have_identity, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.passwd*, %struct.passwd** %2, align 8
  %10 = call i32 @ask_filename(%struct.passwd* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @identity_file, align 4
  %13 = call i64 @stat(i32 %12, %struct.stat* %4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @identity_file, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* @identity_file, align 4
  %22 = call %struct.sshkey* @load_identity(i32 %21)
  store %struct.sshkey* %22, %struct.sshkey** %3, align 8
  %23 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @sshkey_write(%struct.sshkey* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ssh_err(i32 %28)
  %30 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %33 = call i32 @sshkey_free(%struct.sshkey* %32)
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @ask_filename(%struct.passwd*, i8*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @fatal(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.sshkey* @load_identity(i32) #1

declare dso_local i32 @sshkey_write(%struct.sshkey*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

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
