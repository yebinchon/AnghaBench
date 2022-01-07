; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_user.c_userfromstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_user.c_userfromstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_user_ent = type { i32, i32, i32 }

@user_delim = common dso_local global i32 0, align 4
@AU_USER_NAME_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.au_user_ent* (i8*, %struct.au_user_ent*)* @userfromstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.au_user_ent* @userfromstr(i8* %0, %struct.au_user_ent* %1) #0 {
  %3 = alloca %struct.au_user_ent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.au_user_ent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.au_user_ent* %1, %struct.au_user_ent** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @user_delim, align 4
  %12 = call i8* @strtok_r(i8* %10, i32 %11, i8** %9)
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* @user_delim, align 4
  %14 = call i8* @strtok_r(i8* null, i32 %13, i8** %9)
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* @user_delim, align 4
  %16 = call i8* @strtok_r(i8* null, i32 %15, i8** %9)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %2
  store %struct.au_user_ent* null, %struct.au_user_ent** %3, align 8
  br label %54

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = load i64, i64* @AU_USER_NAME_MAX, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.au_user_ent* null, %struct.au_user_ent** %3, align 8
  br label %54

32:                                               ; preds = %26
  %33 = load %struct.au_user_ent*, %struct.au_user_ent** %5, align 8
  %34 = getelementptr inbounds %struct.au_user_ent, %struct.au_user_ent* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* @AU_USER_NAME_MAX, align 8
  %38 = call i32 @strlcpy(i32 %35, i8* %36, i64 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.au_user_ent*, %struct.au_user_ent** %5, align 8
  %41 = getelementptr inbounds %struct.au_user_ent, %struct.au_user_ent* %40, i32 0, i32 1
  %42 = call i32 @getauditflagsbin(i8* %39, i32* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store %struct.au_user_ent* null, %struct.au_user_ent** %3, align 8
  br label %54

45:                                               ; preds = %32
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.au_user_ent*, %struct.au_user_ent** %5, align 8
  %48 = getelementptr inbounds %struct.au_user_ent, %struct.au_user_ent* %47, i32 0, i32 0
  %49 = call i32 @getauditflagsbin(i8* %46, i32* %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.au_user_ent* null, %struct.au_user_ent** %3, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load %struct.au_user_ent*, %struct.au_user_ent** %5, align 8
  store %struct.au_user_ent* %53, %struct.au_user_ent** %3, align 8
  br label %54

54:                                               ; preds = %52, %51, %44, %31, %25
  %55 = load %struct.au_user_ent*, %struct.au_user_ent** %3, align 8
  ret %struct.au_user_ent* %55
}

declare dso_local i8* @strtok_r(i8*, i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i32 @getauditflagsbin(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
