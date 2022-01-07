; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_clone_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getpw_test.c_clone_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, %struct.passwd*)* @clone_passwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_passwd(%struct.passwd* %0, %struct.passwd* %1) #0 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  store %struct.passwd* %1, %struct.passwd** %4, align 8
  %5 = load %struct.passwd*, %struct.passwd** %3, align 8
  %6 = icmp ne %struct.passwd* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ATF_REQUIRE(i32 %7)
  %9 = load %struct.passwd*, %struct.passwd** %4, align 8
  %10 = icmp ne %struct.passwd* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ATF_REQUIRE(i32 %11)
  %13 = load %struct.passwd*, %struct.passwd** %3, align 8
  %14 = load %struct.passwd*, %struct.passwd** %4, align 8
  %15 = call i32 @memcpy(%struct.passwd* %13, %struct.passwd* %14, i32 48)
  %16 = load %struct.passwd*, %struct.passwd** %4, align 8
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.passwd*, %struct.passwd** %4, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = call i8* @strdup(i32* %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.passwd*, %struct.passwd** %3, align 8
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 5
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.passwd*, %struct.passwd** %4, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.passwd*, %struct.passwd** %4, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i8* @strdup(i32* %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.passwd*, %struct.passwd** %3, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.passwd*, %struct.passwd** %4, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.passwd*, %struct.passwd** %4, align 8
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i8* @strdup(i32* %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.passwd*, %struct.passwd** %3, align 8
  %53 = getelementptr inbounds %struct.passwd, %struct.passwd* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.passwd*, %struct.passwd** %4, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.passwd*, %struct.passwd** %4, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i8* @strdup(i32* %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.passwd*, %struct.passwd** %3, align 8
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.passwd*, %struct.passwd** %4, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.passwd*, %struct.passwd** %4, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i8* @strdup(i32* %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.passwd*, %struct.passwd** %3, align 8
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.passwd*, %struct.passwd** %4, align 8
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.passwd*, %struct.passwd** %3, align 8
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i8* @strdup(i32* %88)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.passwd*, %struct.passwd** %3, align 8
  %92 = getelementptr inbounds %struct.passwd, %struct.passwd* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %85, %80
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memcpy(%struct.passwd*, %struct.passwd*, i32) #1

declare dso_local i8* @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
