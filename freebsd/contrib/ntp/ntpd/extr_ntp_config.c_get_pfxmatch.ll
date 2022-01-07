; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_get_pfxmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_get_pfxmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.masks = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.masks*)* @get_pfxmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pfxmatch(i8** %0, %struct.masks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.masks*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.masks* %1, %struct.masks** %5, align 8
  br label %6

6:                                                ; preds = %38, %2
  %7 = load %struct.masks*, %struct.masks** %5, align 8
  %8 = getelementptr inbounds %struct.masks, %struct.masks* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.masks*, %struct.masks** %5, align 8
  %15 = getelementptr inbounds %struct.masks, %struct.masks* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.masks*, %struct.masks** %5, align 8
  %18 = getelementptr inbounds %struct.masks, %struct.masks* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @strlen(i32* %19)
  %21 = call i64 @strncmp(i8* %13, i32* %16, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = load %struct.masks*, %struct.masks** %5, align 8
  %25 = getelementptr inbounds %struct.masks, %struct.masks* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @strlen(i32* %26)
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %28, align 8
  %32 = load %struct.masks*, %struct.masks** %5, align 8
  %33 = getelementptr inbounds %struct.masks, %struct.masks* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %11
  %36 = load %struct.masks*, %struct.masks** %5, align 8
  %37 = getelementptr inbounds %struct.masks, %struct.masks* %36, i32 1
  store %struct.masks* %37, %struct.masks** %5, align 8
  br label %38

38:                                               ; preds = %35
  br label %6

39:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @strncmp(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
