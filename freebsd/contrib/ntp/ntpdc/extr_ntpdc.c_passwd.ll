; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@info_auth_keyid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Keyid: \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Keyid must be defined\0A\00", align 1
@info_auth_keytype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Password unchanged\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @passwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @passwd(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* @info_auth_keyid, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = call i64 @getkeyid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %9, i64* @info_auth_keyid, align 8
  %10 = load i64, i64* @info_auth_keyid, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %47

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.parse*, %struct.parse** %3, align 8
  %18 = getelementptr inbounds %struct.parse, %struct.parse* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.parse*, %struct.parse** %3, align 8
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  br label %39

28:                                               ; preds = %16
  %29 = load i32, i32* @info_auth_keytype, align 4
  %30 = call i8* @getpass_keytype(i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %47

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i64, i64* @info_auth_keyid, align 8
  %41 = load i32, i32* @info_auth_keytype, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = call i32 @authusekey(i64 %40, i32 %41, i32* %43)
  %45 = load i64, i64* @info_auth_keyid, align 8
  %46 = call i32 @authtrust(i64 %45, i32 1)
  br label %47

47:                                               ; preds = %39, %35, %12
  ret void
}

declare dso_local i64 @getkeyid(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i8* @getpass_keytype(i32) #1

declare dso_local i32 @authusekey(i64, i32, i32*) #1

declare dso_local i32 @authtrust(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
