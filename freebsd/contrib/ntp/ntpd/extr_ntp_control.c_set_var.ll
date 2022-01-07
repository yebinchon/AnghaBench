; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_set_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_var = type { i32, i8* }

@EOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_var(%struct.ctl_var** %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ctl_var**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ctl_var*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ctl_var** %0, %struct.ctl_var*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* null, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %4
  br label %127

19:                                               ; preds = %15
  %20 = load %struct.ctl_var**, %struct.ctl_var*** %5, align 8
  %21 = load %struct.ctl_var*, %struct.ctl_var** %20, align 8
  store %struct.ctl_var* %21, %struct.ctl_var** %9, align 8
  %22 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %23 = icmp ne %struct.ctl_var* %22, null
  br i1 %23, label %24, label %118

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %114, %24
  %26 = load i32, i32* @EOV, align 4
  %27 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %28 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %117

33:                                               ; preds = %25
  %34 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %35 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* null, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @emalloc(i32 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy(i8* %41, i8* %42, i32 %43)
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %47 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %51 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %127

52:                                               ; preds = %33
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %10, align 8
  %54 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %55 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  br label %57

57:                                               ; preds = %72, %52
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 61
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %65, %68
  br label %70

70:                                               ; preds = %62, %57
  %71 = phi i1 [ false, %57 ], [ %69, %62 ]
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  br label %57

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %11, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %77
  %86 = load i8*, i8** %11, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 61
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %11, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %96 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load i32, i32* %7, align 4
  %101 = call i8* @erealloc(i8* %99, i32 %100)
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @memcpy(i8* %102, i8* %103, i32 %104)
  %106 = load i8*, i8** %12, align 8
  %107 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %108 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %112 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %127

113:                                              ; preds = %90, %77
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.ctl_var*, %struct.ctl_var** %9, align 8
  %116 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %115, i32 1
  store %struct.ctl_var* %116, %struct.ctl_var** %9, align 8
  br label %25

117:                                              ; preds = %25
  br label %118

118:                                              ; preds = %117, %19
  %119 = load %struct.ctl_var**, %struct.ctl_var*** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = call i8* @add_var(%struct.ctl_var** %119, i32 %120, i8* %121)
  store i8* %122, i8** %12, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @memcpy(i8* %123, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %118, %94, %38, %18
  ret void
}

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @erealloc(i8*, i32) #1

declare dso_local i8* @add_var(%struct.ctl_var**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
