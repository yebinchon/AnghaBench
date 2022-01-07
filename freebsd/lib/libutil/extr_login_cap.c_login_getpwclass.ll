; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getpwclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getpwclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i64 }

@LOGIN_DEFROOTCLASS = common dso_local global i8* null, align 8
@LOGIN_DEFCLASS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @login_getpwclass(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.passwd*, %struct.passwd** %2, align 8
  %5 = icmp ne %struct.passwd* %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.passwd*, %struct.passwd** %2, align 8
  %8 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12, %6
  %18 = load %struct.passwd*, %struct.passwd** %2, align 8
  %19 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** @LOGIN_DEFROOTCLASS, align 8
  br label %26

24:                                               ; preds = %17
  %25 = load i8*, i8** @LOGIN_DEFCLASS, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8* [ %23, %22 ], [ %25, %24 ]
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %26, %12
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.passwd*, %struct.passwd** %2, align 8
  %32 = call i32* @login_getclassbyname(i8* %30, %struct.passwd* %31)
  ret i32* %32
}

declare dso_local i32* @login_getclassbyname(i8*, %struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
