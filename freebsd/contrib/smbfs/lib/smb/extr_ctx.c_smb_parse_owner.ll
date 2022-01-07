; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_parse_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_parse_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }
%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Invalid group name %s, ignored\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid user name %s, ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @smb_parse_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_parse_owner(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 58)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %9, align 8
  store i8 0, i8* %15, align 1
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i8*, i8** %9, align 8
  %22 = call %struct.group* @getgrnam(i8* %21)
  store %struct.group* %22, %struct.group** %7, align 8
  %23 = load %struct.group*, %struct.group** %7, align 8
  %24 = icmp ne %struct.group* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.group*, %struct.group** %7, align 8
  %27 = getelementptr inbounds %struct.group, %struct.group* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @smb_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 0, i8* %31)
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %14
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = call %struct.passwd* @getpwnam(i8* %40)
  store %struct.passwd* %41, %struct.passwd** %8, align 8
  %42 = load %struct.passwd*, %struct.passwd** %8, align 8
  %43 = icmp ne %struct.passwd* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.passwd*, %struct.passwd** %8, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @smb_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %35
  %54 = call i32 (...) @endpwent()
  ret i32 0
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @smb_error(i8*, i32, i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
