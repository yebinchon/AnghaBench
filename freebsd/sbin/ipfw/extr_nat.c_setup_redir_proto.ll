; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_setup_redir_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_setup_redir_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat44_cfg_redir = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.protoent = type { i32 }

@REDIR_PROTO = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"redirect_proto: unknown protocol %s\00", align 1
@INADDR_ANY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8***)* @setup_redir_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_redir_proto(i8* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca %struct.nat44_cfg_redir*, align 8
  %8 = alloca %struct.protoent*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8*** %2, i8**** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.nat44_cfg_redir*
  store %struct.nat44_cfg_redir* %11, %struct.nat44_cfg_redir** %7, align 8
  %12 = load i32, i32* @REDIR_PROTO, align 4
  %13 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %14 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 32
  store i8* %16, i8** %4, align 8
  store i64 32, i64* %9, align 8
  %17 = load i8***, i8**** %6, align 8
  %18 = load i8**, i8*** %17, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call %struct.protoent* @getprotobyname(i8* %19)
  store %struct.protoent* %20, %struct.protoent** %8, align 8
  %21 = load %struct.protoent*, %struct.protoent** %8, align 8
  %22 = icmp eq %struct.protoent* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @EX_DATAERR, align 4
  %25 = load i8***, i8**** %6, align 8
  %26 = load i8**, i8*** %25, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @errx(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.protoent*, %struct.protoent** %8, align 8
  %31 = getelementptr inbounds %struct.protoent, %struct.protoent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %34 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i8***, i8**** %6, align 8
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %36, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load i8***, i8**** %6, align 8
  %43 = load i8**, i8*** %42, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %46 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %45, i32 0, i32 2
  %47 = call i32 @StrToAddr(i8* %44, %struct.TYPE_2__* %46)
  %48 = load i8***, i8**** %6, align 8
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %48, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %35
  %58 = load i8*, i8** @INADDR_ANY, align 8
  %59 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %60 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** @INADDR_ANY, align 8
  %63 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %64 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  br label %111

66:                                               ; preds = %35
  %67 = load i8***, i8**** %6, align 8
  %68 = load i8**, i8*** %67, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isdigit(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %66
  %74 = load i8***, i8**** %6, align 8
  %75 = load i8**, i8*** %74, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %78 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %77, i32 0, i32 1
  %79 = call i32 @StrToAddr(i8* %76, %struct.TYPE_2__* %78)
  %80 = load i8***, i8**** %6, align 8
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %80, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %73
  %90 = load i8***, i8**** %6, align 8
  %91 = load i8**, i8*** %90, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isdigit(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load i8***, i8**** %6, align 8
  %98 = load i8**, i8*** %97, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %7, align 8
  %101 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %100, i32 0, i32 0
  %102 = call i32 @StrToAddr(i8* %99, %struct.TYPE_2__* %101)
  %103 = load i8***, i8**** %6, align 8
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %103, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %96, %89, %73
  br label %110

110:                                              ; preds = %109, %66
  br label %111

111:                                              ; preds = %110, %57
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  ret i32 %113
}

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @StrToAddr(i8*, %struct.TYPE_2__*) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
