; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_protocolname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_protocolname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { i32 }
%struct.protoent = type { i8* }

@res_protocolname.number = internal global [8 x i8] zeroinitializer, align 1
@protolist = common dso_local global %struct.valuelist* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @res_protocolname(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.protoent*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.valuelist*, %struct.valuelist** @protolist, align 8
  %6 = icmp eq %struct.valuelist* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @res_buildprotolist()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.protoent* @cgetprotobynumber(i32 %10)
  store %struct.protoent* %11, %struct.protoent** %4, align 8
  %12 = load %struct.protoent*, %struct.protoent** %4, align 8
  %13 = icmp eq %struct.protoent* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @res_protocolname.number, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @res_protocolname.number, i64 0, i64 0), i8** %2, align 8
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.protoent*, %struct.protoent** %4, align 8
  %19 = getelementptr inbounds %struct.protoent, %struct.protoent* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i32 @res_buildprotolist(...) #1

declare dso_local %struct.protoent* @cgetprotobynumber(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
