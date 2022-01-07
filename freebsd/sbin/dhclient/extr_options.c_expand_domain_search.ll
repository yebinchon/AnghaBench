; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_expand_domain_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_expand_domain_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { %struct.option_data* }
%struct.option_data = type { i8*, i64 }

@DHO_DOMAIN_SEARCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Can't allocate storage for expanded domain-search\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_domain_search(%struct.packet* %0) #0 {
  %2 = alloca %struct.packet*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.option_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.packet* %0, %struct.packet** %2, align 8
  %9 = load %struct.packet*, %struct.packet** %2, align 8
  %10 = getelementptr inbounds %struct.packet, %struct.packet* %9, i32 0, i32 0
  %11 = load %struct.option_data*, %struct.option_data** %10, align 8
  %12 = load i64, i64* @DHO_DOMAIN_SEARCH, align 8
  %13 = getelementptr inbounds %struct.option_data, %struct.option_data* %11, i64 %12
  %14 = getelementptr inbounds %struct.option_data, %struct.option_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %86

18:                                               ; preds = %1
  %19 = load %struct.packet*, %struct.packet** %2, align 8
  %20 = getelementptr inbounds %struct.packet, %struct.packet* %19, i32 0, i32 0
  %21 = load %struct.option_data*, %struct.option_data** %20, align 8
  %22 = load i64, i64* @DHO_DOMAIN_SEARCH, align 8
  %23 = getelementptr inbounds %struct.option_data, %struct.option_data* %21, i64 %22
  store %struct.option_data* %23, %struct.option_data** %6, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %36, %18
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.option_data*, %struct.option_data** %6, align 8
  %27 = getelementptr inbounds %struct.option_data, %struct.option_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.option_data*, %struct.option_data** %6, align 8
  %32 = call i32 @find_search_domain_name_len(%struct.option_data* %31, i64* %3)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %86

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8* @malloc(i32 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  store i64 0, i64* %3, align 8
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %63, %55
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.option_data*, %struct.option_data** %6, align 8
  %60 = getelementptr inbounds %struct.option_data, %struct.option_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.option_data*, %struct.option_data** %6, align 8
  %65 = call i32 @expand_search_domain_name(%struct.option_data* %64, i64* %3, i8** %8)
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 32, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  br label %57

70:                                               ; preds = %57
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.option_data*, %struct.option_data** %6, align 8
  %76 = getelementptr inbounds %struct.option_data, %struct.option_data* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.option_data*, %struct.option_data** %6, align 8
  %82 = getelementptr inbounds %struct.option_data, %struct.option_data* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.option_data*, %struct.option_data** %6, align 8
  %85 = getelementptr inbounds %struct.option_data, %struct.option_data* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %70, %35, %17
  ret void
}

declare dso_local i32 @find_search_domain_name_len(%struct.option_data*, i64*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @expand_search_domain_name(%struct.option_data*, i64*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
