; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_set_zonefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_set_zonefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zone_set_zonefile(%struct.auth_zone* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca i8*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %7 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %12 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free(i32* %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %20 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %33

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @strdup(i8* %22)
  %24 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %25 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %27 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %18
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
