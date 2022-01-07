; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"#h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#@\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"#$\00", align 1
@LSVALID_NOHASH = common dso_local global i32 0, align 4
@LSVALID_BADFORMAT = common dso_local global i32 0, align 4
@LSVALID_BADHASH = common dso_local global i32 0, align 4
@LSVALID_GOODHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leapsec_validate(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca [50 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %10, align 4
  %11 = call i32 @isc_sha1_init(i32* %6)
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %16 = call i64 @get_line(i32 %13, i8* %14, i8* %15, i32 50)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = call i32 @do_leap_hash(%struct.TYPE_5__* %7, i8* %24)
  store i32 %25, i32* %10, align 4
  br label %53

26:                                               ; preds = %18
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = call i32 @do_hash_data(i32* %6, i8* %32)
  br label %52

34:                                               ; preds = %26
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = call i32 @do_hash_data(i32* %6, i8* %40)
  br label %51

42:                                               ; preds = %34
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = call i64 @isdigit(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %49 = call i32 @do_hash_data(i32* %6, i8* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52, %22
  br label %12

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @isc_sha1_final(i32* %6, i32 %56)
  %58 = call i32 @isc_sha1_invalidate(i32* %6)
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 0, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @LSVALID_NOHASH, align 4
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 0, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @LSVALID_BADFORMAT, align 4
  store i32 %67, i32* %3, align 4
  br label %75

68:                                               ; preds = %63
  %69 = call i64 @memcmp(%struct.TYPE_5__* %7, %struct.TYPE_5__* %8, i32 4)
  %70 = icmp ne i64 0, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @LSVALID_BADHASH, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @LSVALID_GOODHASH, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %71, %66, %61
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @isc_sha1_init(i32*) #1

declare dso_local i64 @get_line(i32, i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @do_leap_hash(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @do_hash_data(i32*, i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @isc_sha1_final(i32*, i32) #1

declare dso_local i32 @isc_sha1_invalidate(i32*) #1

declare dso_local i64 @memcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
