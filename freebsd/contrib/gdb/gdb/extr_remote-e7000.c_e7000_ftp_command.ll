; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_ftp_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_ftp_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timeout = common dso_local global i32 0, align 4
@remote_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ftp %s\0D\00", align 1
@machine = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c" Username : \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0D\00", align 1
@user = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c" Password : \00", align 1
@passwd = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"success\0D\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FTP>\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cd %s\0D\00", align 1
@dir = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"ll 0;s:%s\0D\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"bye\0D\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @e7000_ftp_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7000_ftp_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [200 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @timeout, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @remote_timeout, align 4
  store i32 %8, i32* @timeout, align 4
  %9 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %10 = load i8*, i8** @machine, align 8
  %11 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %13 = call i32 @puts_e7000debug(i8* %12)
  %14 = call i32 @expect(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %15 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %16 = load i8*, i8** @user, align 8
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %19 = call i32 @puts_e7000debug(i8* %18)
  %20 = call i32 @expect(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i8*, i8** @passwd, align 8
  %22 = call i32 @write_e7000(i8* %21)
  %23 = call i32 @write_e7000(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @expect(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @expect(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %26 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %27 = load i8*, i8** @dir, align 8
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %27)
  %29 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %30 = call i32 @puts_e7000debug(i8* %29)
  %31 = call i32 @expect(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %32 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %36 = call i32 @puts_e7000debug(i8* %35)
  %37 = call i32 @expect(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i32 @puts_e7000debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %39 = call i32 @expect(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* @timeout, align 4
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @puts_e7000debug(i8*) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local i32 @write_e7000(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
