; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_keyid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@info_auth_keyid = common dso_local global i64 0, align 8
@keyid_entered = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no keyid defined\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no keyid will be sent\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"keyid is %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @keyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyid(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.parse*, %struct.parse** %3, align 8
  %6 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i64, i64* @info_auth_keyid, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @keyid_entered, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %33

18:                                               ; preds = %12, %9
  %19 = load i64, i64* @info_auth_keyid, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* @keyid_entered, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %32

27:                                               ; preds = %21, %18
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* @info_auth_keyid, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  br label %33

33:                                               ; preds = %32, %15
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.parse*, %struct.parse** %3, align 8
  %36 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* @info_auth_keyid, align 8
  store i32 1, i32* @keyid_entered, align 4
  br label %41

41:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
