; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_setdefuser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_conf.c_setdefuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@setdefuser.defuserbuf = internal global [40 x i8] zeroinitializer, align 16
@DefUser = common dso_local global i8* null, align 8
@DefUid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"setdefuser: DefUid=%ld, DefUser=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setdefuser() #0 {
  %1 = alloca %struct.passwd*, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @setdefuser.defuserbuf, i64 0, i64 0), i8** @DefUser, align 8
  %2 = load i64, i64* @DefUid, align 8
  %3 = call %struct.passwd* @sm_getpwuid(i64 %2)
  store %struct.passwd* %3, %struct.passwd** %1, align 8
  %4 = load %struct.passwd*, %struct.passwd** %1, align 8
  %5 = icmp eq %struct.passwd* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load %struct.passwd*, %struct.passwd** %1, align 8
  %8 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %0
  br label %16

12:                                               ; preds = %6
  %13 = load %struct.passwd*, %struct.passwd** %1, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %11 ], [ %15, %12 ]
  %18 = call i32 @sm_strlcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @setdefuser.defuserbuf, i64 0, i64 0), i8* %17, i32 40)
  %19 = call i64 @tTd(i32 37, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* @DefUid, align 8
  %23 = load i8*, i8** @DefUser, align 8
  %24 = call i32 @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %16
  ret void
}

declare dso_local %struct.passwd* @sm_getpwuid(i64) #1

declare dso_local i32 @sm_strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @tTd(i32, i32) #1

declare dso_local i32 @sm_dprintf(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
