; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_getstringptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_getstringptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcfile = type { i32 }
%struct.rcsection = type { i32 }
%struct.rckey = type { i8* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_getstringptr(%struct.rcfile* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.rcsection*, align 8
  %11 = alloca %struct.rckey*, align 8
  store %struct.rcfile* %0, %struct.rcfile** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.rcfile*, %struct.rcfile** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.rcsection* @rc_findsect(%struct.rcfile* %13, i8* %14)
  store %struct.rcsection* %15, %struct.rcsection** %10, align 8
  %16 = load %struct.rcsection*, %struct.rcsection** %10, align 8
  %17 = icmp ne %struct.rcsection* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %5, align 4
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.rcsection*, %struct.rcsection** %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.rckey* @rc_sect_findkey(%struct.rcsection* %21, i8* %22)
  store %struct.rckey* %23, %struct.rckey** %11, align 8
  %24 = load %struct.rckey*, %struct.rckey** %11, align 8
  %25 = icmp ne %struct.rckey* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.rckey*, %struct.rckey** %11, align 8
  %30 = getelementptr inbounds %struct.rckey, %struct.rckey* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %26, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.rcsection* @rc_findsect(%struct.rcfile*, i8*) #1

declare dso_local %struct.rckey* @rc_sect_findkey(%struct.rcsection*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
