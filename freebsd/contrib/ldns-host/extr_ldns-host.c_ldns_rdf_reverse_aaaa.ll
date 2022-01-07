; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_rdf_reverse_aaaa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_rdf_reverse_aaaa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_IP6ADDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%x.%x.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @ldns_rdf_reverse_aaaa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ldns_rdf_reverse_aaaa(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @LDNS_IP6ADDRLEN, align 4
  %12 = mul nsw i32 %11, 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = call i8* @alloca(i32 %15)
  store i8* %16, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %41, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LDNS_IP6ADDRLEN, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @ldns_rdf_data(i32* %22)
  %24 = load i32, i32* @LDNS_IP6ADDRLEN, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 15
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 4
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @LDNS_IP6ADDRLEN, align 4
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32* @ldns_dname_new_frm_str(i8* %52)
  ret i32* %53
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32* @ldns_rdf_data(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32* @ldns_dname_new_frm_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
