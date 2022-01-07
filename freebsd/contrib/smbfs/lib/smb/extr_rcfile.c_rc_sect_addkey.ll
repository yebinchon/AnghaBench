; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_sect_addkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_sect_addkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rckey = type { i8*, i8* }
%struct.rcsection = type { i32 }

@rk_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rckey* (%struct.rcsection*, i8*, i8*)* @rc_sect_addkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rckey* @rc_sect_addkey(%struct.rcsection* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.rckey*, align 8
  %5 = alloca %struct.rcsection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rckey*, align 8
  store %struct.rcsection* %0, %struct.rcsection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.rcsection*, %struct.rcsection** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.rckey* @rc_sect_findkey(%struct.rcsection* %9, i8* %10)
  store %struct.rckey* %11, %struct.rckey** %8, align 8
  %12 = load %struct.rckey*, %struct.rckey** %8, align 8
  %13 = icmp ne %struct.rckey* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.rckey*, %struct.rckey** %8, align 8
  %16 = getelementptr inbounds %struct.rckey, %struct.rckey* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @free(i8* %17)
  br label %34

19:                                               ; preds = %3
  %20 = call %struct.rckey* @malloc(i32 16)
  store %struct.rckey* %20, %struct.rckey** %8, align 8
  %21 = load %struct.rckey*, %struct.rckey** %8, align 8
  %22 = icmp ne %struct.rckey* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store %struct.rckey* null, %struct.rckey** %4, align 8
  br label %47

24:                                               ; preds = %19
  %25 = load %struct.rcsection*, %struct.rcsection** %5, align 8
  %26 = getelementptr inbounds %struct.rcsection, %struct.rcsection* %25, i32 0, i32 0
  %27 = load %struct.rckey*, %struct.rckey** %8, align 8
  %28 = load i32, i32* @rk_next, align 4
  %29 = call i32 @SLIST_INSERT_HEAD(i32* %26, %struct.rckey* %27, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strdup(i8* %30)
  %32 = load %struct.rckey*, %struct.rckey** %8, align 8
  %33 = getelementptr inbounds %struct.rckey, %struct.rckey* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %24, %14
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strdup(i8* %38)
  br label %42

40:                                               ; preds = %34
  %41 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i8* [ %39, %37 ], [ %41, %40 ]
  %44 = load %struct.rckey*, %struct.rckey** %8, align 8
  %45 = getelementptr inbounds %struct.rckey, %struct.rckey* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rckey*, %struct.rckey** %8, align 8
  store %struct.rckey* %46, %struct.rckey** %4, align 8
  br label %47

47:                                               ; preds = %42, %23
  %48 = load %struct.rckey*, %struct.rckey** %4, align 8
  ret %struct.rckey* %48
}

declare dso_local %struct.rckey* @rc_sect_findkey(%struct.rcsection*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.rckey* @malloc(i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.rckey*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
