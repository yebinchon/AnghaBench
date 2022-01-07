; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_servicename.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_servicename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { i32 }
%struct.servent = type { i8* }

@res_servicename.number = internal global [8 x i8] zeroinitializer, align 1
@servicelist = common dso_local global %struct.valuelist* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @res_servicename(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.servent*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load %struct.valuelist*, %struct.valuelist** @servicelist, align 8
  %8 = icmp eq %struct.valuelist* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @res_buildservicelist()
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.servent* @cgetservbyport(i32 %13, i8* %14)
  store %struct.servent* %15, %struct.servent** %6, align 8
  %16 = load %struct.servent*, %struct.servent** %6, align 8
  %17 = icmp eq %struct.servent* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @res_servicename.number, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @res_servicename.number, i64 0, i64 0), i8** %3, align 8
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.servent*, %struct.servent** %6, align 8
  %23 = getelementptr inbounds %struct.servent, %struct.servent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local i32 @res_buildservicelist(...) #1

declare dso_local %struct.servent* @cgetservbyport(i32, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
