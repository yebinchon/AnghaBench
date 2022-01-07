; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_buildprotolist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_buildprotolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valuelist = type { %struct.valuelist*, %struct.valuelist*, i32, i32* }
%struct.protoent = type { i32, i32 }

@protolist = common dso_local global %struct.valuelist* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @res_buildprotolist() #0 {
  %1 = alloca %struct.protoent*, align 8
  %2 = alloca %struct.valuelist*, align 8
  %3 = call i32 @setprotoent(i32 1)
  br label %4

4:                                                ; preds = %44, %0
  %5 = call %struct.protoent* (...) @getprotoent()
  store %struct.protoent* %5, %struct.protoent** %1, align 8
  %6 = icmp ne %struct.protoent* %5, null
  br i1 %6, label %7, label %46

7:                                                ; preds = %4
  %8 = call i64 @malloc(i32 32)
  %9 = inttoptr i64 %8 to %struct.valuelist*
  store %struct.valuelist* %9, %struct.valuelist** %2, align 8
  %10 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %11 = icmp ne %struct.valuelist* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %46

13:                                               ; preds = %7
  %14 = load %struct.protoent*, %struct.protoent** %1, align 8
  %15 = getelementptr inbounds %struct.protoent, %struct.protoent* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @strdup(i32 %16)
  %18 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %19 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %21 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %26 = call i32 @free(%struct.valuelist* %25)
  br label %46

27:                                               ; preds = %13
  %28 = load %struct.protoent*, %struct.protoent** %1, align 8
  %29 = getelementptr inbounds %struct.protoent, %struct.protoent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %32 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.valuelist*, %struct.valuelist** @protolist, align 8
  %34 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %35 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %34, i32 0, i32 1
  store %struct.valuelist* %33, %struct.valuelist** %35, align 8
  %36 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %37 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %36, i32 0, i32 0
  store %struct.valuelist* null, %struct.valuelist** %37, align 8
  %38 = load %struct.valuelist*, %struct.valuelist** @protolist, align 8
  %39 = icmp ne %struct.valuelist* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  %42 = load %struct.valuelist*, %struct.valuelist** @protolist, align 8
  %43 = getelementptr inbounds %struct.valuelist, %struct.valuelist* %42, i32 0, i32 0
  store %struct.valuelist* %41, %struct.valuelist** %43, align 8
  br label %44

44:                                               ; preds = %40, %27
  %45 = load %struct.valuelist*, %struct.valuelist** %2, align 8
  store %struct.valuelist* %45, %struct.valuelist** @protolist, align 8
  br label %4

46:                                               ; preds = %24, %12, %4
  %47 = call i32 (...) @endprotoent()
  ret void
}

declare dso_local i32 @setprotoent(i32) #1

declare dso_local %struct.protoent* @getprotoent(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @free(%struct.valuelist*) #1

declare dso_local i32 @endprotoent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
