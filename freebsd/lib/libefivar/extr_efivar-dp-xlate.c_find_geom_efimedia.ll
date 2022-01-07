; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_find_geom_efimedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_find_geom_efimedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmesh = type { i32 }
%struct.gprovider = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"efimedia\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.gmesh*, i8*)* @find_geom_efimedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_geom_efimedia(%struct.gmesh* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gmesh*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gprovider*, align 8
  %7 = alloca i8*, align 8
  store %struct.gmesh* %0, %struct.gmesh** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.gmesh*, %struct.gmesh** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.gprovider* @find_provider_by_name(%struct.gmesh* %8, i8* %9)
  store %struct.gprovider* %10, %struct.gprovider** %6, align 8
  %11 = load %struct.gprovider*, %struct.gprovider** %6, align 8
  %12 = icmp eq %struct.gprovider* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.gmesh*, %struct.gmesh** %4, align 8
  %16 = load %struct.gprovider*, %struct.gprovider** %6, align 8
  %17 = call i8* @geom_pp_attr(%struct.gmesh* %15, %struct.gprovider* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %21, %20, %13
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local %struct.gprovider* @find_provider_by_name(%struct.gmesh*, i8*) #1

declare dso_local i8* @geom_pp_attr(%struct.gmesh*, %struct.gprovider*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
