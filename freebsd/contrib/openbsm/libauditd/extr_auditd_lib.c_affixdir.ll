; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_affixdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_affixdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_ent = type { i32 }

@FILENAME_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@auditd_hostlen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@auditd_host = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.dir_ent*)* @affixdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @affixdir(i8* %0, %struct.dir_ent* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dir_ent*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dir_ent* %1, %struct.dir_ent** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = load i64, i64* @FILENAME_LEN, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load i64, i64* @auditd_hostlen, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.dir_ent*, %struct.dir_ent** %5, align 8
  %18 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @auditd_host, align 4
  %22 = call i32 (i8**, i8*, i32, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20, i32 %21)
  br label %29

23:                                               ; preds = %13
  %24 = load %struct.dir_ent*, %struct.dir_ent** %5, align 8
  %25 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8**, i8*, i32, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
